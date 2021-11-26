"""
Imports
"""

# Libc
from libc.stdio cimport printf
from libc.stdlib cimport malloc, free, rand, srand
from libc.time cimport time
from libc.math cimport pi, cos, sin, pow, sqrt
from libc.string cimport strlen, strcpy

# Graphics (GL & SOIL)
from glew cimport glewInit
from gl cimport *
from glfw3 cimport *
from SOIL cimport *

# Eel integration
from eel cimport Paintable

# Python stdlib
from abc import abstractmethod
# ------------------------------------------------------------------------------
"""
Data Structures
"""
from eelText cimport *
ctypedef _Character Character

from eelData cimport *
ctypedef _Point Point
ctypedef _Polygon Polygon
ctypedef _Color Color
# ------------------------------------------------------------------------------
"""
Globals
"""
cdef float ux[4096]
cdef float uy[4096]
cdef Color __global_color
__global_color.hex = 0xFFFFFFFF
# ------------------------------------------------------------------------------
"""
Functions
"""

cpdef setColor(unsigned int r, byte g=0, byte b=0, byte a=255):

    if (r > 255 and g == 0 and b == 0):
            __global_color.hex = r

    else:
        __global_color.r = <byte> r
        __global_color.g = g
        __global_color.b = b
        __global_color.a = a

    return __global_color.hex


cpdef getColor():
    return __global_color.hex

# ------------------------------------------------------------------------------
"""
Buffer-less BaseFigure implementation
"""

cdef class _BaseFigure:

    cdef Polygon poly
    cdef int texture_set

    def __cinit__(self, x, y, *args, **kwargs):

        self.poly.color.hex = 0xFFFFFFFF #[255, 255, 255, 255]
        self.poly.mode = GL_LINE_LOOP
        self.poly.texture = 0
        self.poly.program = 0
        self.point_size = 1.0
        self.texture_set = 0

    
    cpdef setColor(self, unsigned int r, byte g=0, byte b=0, byte a=255):

        if (r > 255 and g == 0 and b == 0):
            self.poly.color.hex = r

        else:
            self.poly.color.r = <byte> r
            self.poly.color.g = g
            self.poly.color.b = b
            self.poly.color.a = a

        return self


    cpdef getColor(self):
        return self.poly.color.hex


    cpdef setMode(self, int mode):
        self.poly.mode = mode

    
    cpdef setTexture(self, char *img):

        cdef unsigned int tex = SOIL_load_OGL_texture(
            img, SOIL_LOAD_RGBA, SOIL_CREATE_NEW_ID,
            SOIL_FLAG_MIPMAPS | SOIL_FLAG_NTSC_SAFE_RGB | SOIL_FLAG_INVERT_Y |
            SOIL_FLAG_COMPRESS_TO_DXT | SOIL_FLAG_MULTIPLY_ALPHA
        )

        self.poly.texture = tex


    cpdef setByteTexture(self, byte texture):
        self.poly.texture = texture

    
    cpdef setPointSize(self, float ps):
        self.poly.point_size = ps


    cpdef drawTo(self, Paintable eel):

        cdef int width = eel.width
        cdef int height = eel.height

        lay = self.layout()
        cdef int count = 0

        for x, y in lay:
            ux[count] = (self.x + x)*1.0 / eel.height
            uy[count] = (self.y + y)*1.0 / eel.height
            count += 1

        self.poly.x = ux
        self.poly.y = uy
        self.poly.used = <int> len(lay)

        eel.render(&self.poly)


    cpdef collidesWith(self, _BaseFigure other):

        cdef int x, y
        cdef int minx, miny, maxx, maxy

        # Minimum distance rule
        cdef double dist
        dist = sqrt(pow(self.x - other.x, 2) + pow(self.y - other.y, 2))

        if dist > self.collisionDistance() + other.collisionDistance():
            return False

        # Check wether one of the center points is inside the other figure
        if self.isInside(other.x, other.y) or other.isInside(self.x, self.y):
            return True


        sx, sy = self.collisionCenter()
        ox, oy = other.collisionCenter()

        if sx < ox:
            minx = sx
            maxx = ox

        else:
            minx = ox
            maxx = sx

        if sy < oy:
            miny = sy
            maxy = oy

        else:
            miny = oy
            maxy = sy


        # Collision in the line between centers
        cdef int mx, my, i

        # Approx.'ing to max
        mx = (maxx + minx) >> 1
        my = (maxy + miny) >> 1

        for i in range(0, 4):

            if self.isInside(mx, my) and other.isInside(mx, my):
                return True

            else:
                mx = (maxx + mx) >> 1
                my = (maxy + my) >> 1

        # Approx.'ing to min
        mx = (minx + (maxx + minx) >> 1) >> 1
        my = (miny + (maxy + miny) >> 1) >> 1
        for i in range(0, 4):

            if self.isInside(mx, my) and other.isInside(mx, my):
                return True

            else:
                mx = (minx + mx) >> 1
                my = (miny + my) >> 1

        # Rectangle between the centers
        for y in range(miny, maxy):
            for x in range(minx, maxx):
                if self.isInside(x, y) and other.isInside(x, y):
                    return True

        return False
# ------------------------------------------------------------------------------
# TODO: Make it work with multiple fonts at a time
# cdef Character *font
# font = NULL

"""
Base Text (Cython Implementation)
"""

cdef class _BaseText(_BaseFigure):

    # cdef char *str
    cdef int _strlen
    cdef Character *font

    def __cinit__(self, int x, int y, text, _BaseFont font=None):

        self.poly.color.hex = 0xFFFFFFFF#[255, 255, 255, 255]
        self.poly.mode = GL_QUADS
        self.poly.point_size = 1.
        self.poly.used = 4
        self.poly.program = 1

        self.font = NULL
        if font:
            self.font = font.font

        self.str = text if type(text) is bytes else bytes(text, "utf-8")
        self._strlen = len(self.str)


    cpdef drawTo(self, Paintable eel):

        cdef int i = 0
        cdef int utfc
        cdef Character *ch
        cdef float xpos, ypos, fx, fy, width, height

        width = eel.width * 1.
        height = eel.height * 1.

        fx = self.x / height
        fy = self.y / height

        # for i in range(0, self._strlen):

        while u8_nextchar(self.str, &i, &utfc):
            # ch = self.font + <int>self.str[i]
            # ch = self.font + utfc
            ch = getChar(self.font, utfc)

            if (<int>utfc == <int>b'\n'):
                fx = self.x / height
                fy += (ch.size.y + ch.bear.y) / height

            else:

                xpos = fx + ch.bear.x / height
                ypos = fy + (ch.size.y - ch.bear.y) / height

                ux[0] = ux[1] = xpos + ch.size.x / height
                ux[2] = ux[3] = xpos

                uy[0] = uy[3] = ypos
                uy[1] = uy[2] = ypos - ch.size.y / height

                self.poly.x = ux
                self.poly.y = uy
                self.poly.texture = ch.TextureID

                eel.render(&self.poly)
                fx += (ch.advance >> 6) / height


    cpdef getText(self):
        return self.str


    cpdef setText(self, text):
        self.str = text if type(text) is bytes else bytes(text, "utf-8")
        self._strlen = len(text)


    cpdef getWidth(self):

        cdef int x = 0
        cdef int i = 0
        cdef int utfc
        cdef Character *ch
        
        cdef int max_x = 0

        if self.font == NULL: return 0

        while u8_nextchar(self.str, &i, &utfc):
            ch = getChar(self.font, utfc)

            if ch != NULL:
                if (<int>utfc == <int>b'\n'):
                    max_x = max(x, max_x)
                    x = 0

                x += (ch.advance >> 6)

        return max(x, max_x)


    cpdef getHeight(self):
        
        cdef int y = 0
        cdef int i = 0
        cdef int utfc
        cdef Character *ch

        if self.font == NULL: return 0

        while u8_nextchar(self.str, &i, &utfc):
            ch = getChar(self.font, utfc)

            if ch != NULL:
                if (<int>utfc == <int>b'\n'):
                    y += ch.size.y

                else: y = max(y, ch.size.y)

        return y


    def getBearing(self):
        cdef int b = 0
        cdef int i = 0
        cdef int utfc
        cdef Character *ch

        if self.font == NULL: return 0

        while u8_nextchar(self.str, &i, &utfc):
            ch = getChar(self.font, utfc)

            if ch != NULL:
                b = max(b, ch.bear.y)

        return b


    cpdef setFont(self, _BaseFont font):
        self.font = font.font

    
    text = property(getText, setText)
    width = property(getWidth)
    height = property(getHeight)
    bearing = property(getBearing)


class Text(_BaseText, _BaseFigure):

    def __init__(self, x, y, **kwargs):
        self.x = x
        self.y = y


cdef class _BaseFont:

    cdef Character *font
    cdef int _size
    # cdef Color color

    def __cinit__(self, name: str, int size=32):

        self._size = size
        self.name = bytes(name, "utf-8")
        self.setFont(self.name, size)


    cpdef text(self, int x, int y, text):
        return Text(x, y, text=text, font=self)


    cdef void setFont(self, char *name, int size=32):

        cdef Character *font

        with nogil:
            font = loadCharacters(name, size)

        self.font = font

        if self.font == NULL:
            raise Exception(
                "Font initialized or modified with no active GL context.")


    cpdef widthOf(self, char *text):

        cdef int x = 0
        cdef int i = 0
        cdef Character *ch

        cdef int ln = strlen(text)

        # for i in range(0, ln):
        while (text[i]):
            ch = self.font + text[i]
            x += (ch.advance >> 6)

            i += 1

        return x


    cpdef heightOf(self, char *text):
        
        cdef int y = 0
        cdef int i = 0
        cdef Character *ch

        cdef int ln = strlen(text)

        # for i in range(0, ln):
        while (text[i]):
            ch = self.font + text[i]
            y = max(y, ch.size.y)

            i += 1

        return y


    cpdef getSize(self):
        return self._size

        
    cpdef setSize(self, int size=32):
        if (self._size != size):
            self._size = size
            self.setFont(self.name, size)


    size = property(getSize, setSize)
# ------------------------------------------------------------------------------
"""
Wrappers
"""
"""
class BaseFigure(_BaseFigure):

    @abstractmethod
    def isInside(self, x, y): pass

    @abstractmethod
    def collisionDistance(self): pass

    @abstractmethod
    def collisionCenter(self): pass

    def getPos(self):
        return self.x, self.y

    def setPos(self, pos):
        self.x, self.y = pos

    pos = property(getPos, setPos)


"""
class Font(_BaseFont): pass
# ------------------------------------------------------------------------------
"""
Aux
"""

class NoPhysics:
    def isInside(self, x, y): return False
    def collisionDistance(self): return 0
    def collisionCenter(self): return (self.x, self.y)

# ------------------------------------------------------------------------------
"""
Python Figures
"""
"""
class __Rectangle(_BaseFigure):

    def __init__(self, x, y, *, width, height, fill=False):

        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.used = 4

        if (fill):
            self.setMode(GL_POLYGON)


    def layout(self):

        return [
            (0, 0), (self.width, 0),
            (self.width, self.height), (0, self.height)
        ]

    def isInside(self, x, y):
        return (
            x >= self.x and x < self.x+self.width and\
            y >= self.y and y < self.y+self.height
        )

    def collisionDistance(self):
        return max(self.width, self.height) * 1.2

    
    def collisionCenter(self):
        return (self.x+self.width/2, self.y+self.height/2)
"""

"""
class Triangle(BaseFigure, NoPhysics):

    def __init__(self, x, y, *, radius, angle=0.0, fill=False):

        self.x = x
        self.y = y
        self.radius = radius
        self.angle = angle
        self.used = 3

        if (fill):
            self.setMode(GL_POLYGON)


    def layout(self):

        a = self.angle + pi * 2/3
        b = self.angle + pi * 4/3
        c = self.angle + pi * 2

        return [
            (cos(a)*self.radius, sin(a)*self.radius), 
            (cos(b)*self.radius, sin(b)*self.radius), 
            (cos(c)*self.radius, sin(c)*self.radius)
        ]


class Circle(BaseFigure):

    def __init__(self, x, y, *, radius, precision=1, fill=False):

        self.x = x
        self.y = y
        self.radius = radius
        self.used = round(radius * 20 * precision)

        if (fill):
            self.setMode(GL_POLYGON)


    def layout(self):

        l = []
        for i in range(0, self.used):

            a = pi * 2 / self.used * i
            l.append((cos(a)*self.radius, sin(a)*self.radius))

        return l


    def isInside(self, x, y):
        return (
            ((self.x - x)**2 + (self.y - y)**2) <= self.radius**2
        )

    
    def collisionDistance(self):
        return self.radius

    
    def collisionCenter(self):
        return (self.x, self.y)
"""
"""
class Sprite(__Rectangle):
    
    def __init__(self, x, y, *, width, height, img):

        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.used = 4

        self.setMode(GL_QUADS)
        self.setTexture(bytes(img, "utf-8"))


    def layout(self):

        w = self.width / 2
        h = self.height / 2

        return [(w, -h), (w, h), (-w, h), (-w, -h)]

"""
"""
class Line(BaseFigure, NoPhysics):

    def __init__(self, x, y, *, xp, yp):

        self.x = x
        self.y = y
        self.xp = xp
        self.yp = yp

        # self.setMode(GL_LINE)


    def layout(self):
        
        return [(0, 0), (self.xp - self.x, self.yp - self.y)]
"""