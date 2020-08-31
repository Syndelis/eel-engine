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
Functions
"""

cdef float ux[4096]
cdef float uy[4096]

cpdef basicRec(int x, int y, int width, int height, Paintable eel):

    cdef Polygon p
    p.color = [0, 200, 0, 255]
    p.point_size = 1.
    p.mode = GL_POLYGON
    p.texture = 0
    p.used = 4
    p.program = 0

    l = [
            (0, 0), (width, 0),
            (width, height), (0, height)
        ]

    cdef int count = 0
    for _x, _y in l:
        ux[count] = (x + _x) * 1.0 / eel.width
        uy[count] = (y + _y) * 1.0 / eel.height
        count += 1

    p.x = ux
    p.y = uy

    eel.render(&p)
# ------------------------------------------------------------------------------
"""
Buffer-less BaseFigure implementation
"""

cdef class _BaseFigure:

    cdef Polygon poly
    cdef int texture_set

    def __cinit__(self, x, y, **kwargs):

        self.poly.color = [255, 255, 255, 255]
        self.poly.mode = GL_LINE_LOOP
        self.poly.texture = 0
        self.poly.program = 0
        self.point_size = 1.0
        self.texture_set = 0

    
    cpdef setColor(self, byte r, byte g, byte b, byte a=255):

        self.poly.color.r = r
        self.poly.color.g = g
        self.poly.color.b = b
        self.poly.color.a = a


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
        mx = (maxx + minx) / 2
        my = (maxy + miny) / 2

        for i in range(0, 4):

            if self.isInside(mx, my) and other.isInside(mx, my):
                return True

            else:
                mx = (maxx + mx) / 2
                my = (maxy + my) / 2

        # Approx.'ing to min
        mx = (minx + (maxx + minx) / 2) / 2
        my = (miny + (maxy + miny) / 2) / 2
        for i in range(0, 4):

            if self.isInside(mx, my) and other.isInside(mx, my):
                return True

            else:
                mx = (minx + mx) / 2
                my = (miny + my) / 2

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

    cdef char *str
    cdef Character *font

    def __cinit__(self, int x, int y, text, _BaseFont font=None):

        self.poly.color = [255, 255, 255, 255]
        self.poly.mode = GL_QUADS
        self.poly.point_size = 1.
        self.poly.used = 4
        self.poly.program = 1

        self.font = NULL
        if font:
            self.font = font.font
            # self.poly.color = font.color

        if type(text) is not bytes: text = bytes(text, "utf-8")
        self.str = <char *> malloc(sizeof(char) * strlen(text))
        strcpy(self.str, text)


    def __dealloc__(self):
        free(self.str)


    cpdef drawTo(self, Paintable eel):

        cdef int i = 0
        cdef Character *ch
        cdef float xpos, ypos, fx, fy, width, height

        width = eel.width * 1.
        height = eel.height * 1.

        fx = self.x / width
        fy = self.y / height

        # for i in range(0, self.chlen):
        while (self.str[i]):
            ch = self.font + self.str[i]

            xpos = fx + ch.bear.x / width
            ypos = fy + (ch.size.y - ch.bear.y) / height

            ux[0] = ux[1] = xpos + ch.size.x / width
            ux[2] = ux[3] = xpos

            uy[0] = uy[3] = ypos
            uy[1] = uy[2] = ypos - ch.size.y / height

            self.poly.x = ux
            self.poly.y = uy
            self.poly.texture = ch.TextureID

            eel.render(&self.poly)
            fx += (ch.advance >> 6) / width

            i += 1


    cpdef getText(self):
        return self.str


    cpdef setText(self, text):
        # self.str = text
        if type(text) is not bytes: text = bytes(text, "utf-8")
        free(self.str)
        self.str = <char *> malloc(sizeof(char) * strlen(text))
        strcpy(self.str, text)


    cpdef getWidth(self):

        cdef int x = 0
        cdef int i = 0
        cdef Character *ch

        cdef int ln = strlen(self.str)

        # for i in range(0, ln):
        while (self.str[i]):
            ch = self.font + self.str[i]
            x += (ch.advance >> 6)

            i += 1

        return x


    cpdef getHeight(self):
        
        cdef int y = 0
        cdef int i = 0
        cdef Character *ch

        cdef int ln = strlen(self.str)

        # for i in range(0, ln):
        while (self.str[i]):
            ch = self.font + self.str[i]
            y = max(y, ch.size.y)

            i += 1

        return y


    cpdef setFont(self, _BaseFont font):
        self.font = font.font

    
    text = property(getText, setText)
    width = property(getWidth)
    height = property(getHeight)


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

        self.font = loadCharacters(name, size)

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

class Rectangle(BaseFigure):

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


class Sprite(Rectangle):
    
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


class Line(BaseFigure, NoPhysics):

    def __init__(self, x, y, *, xp, yp):

        self.x = x
        self.y = y
        self.xp = xp
        self.yp = yp

        # self.setMode(GL_LINE)


    def layout(self):
        
        return [(0, 0), (self.xp - self.x, self.yp - self.y)]