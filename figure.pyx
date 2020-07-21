"""
Imports
"""

# Libc
from libc.stdio cimport printf
from libc.stdlib cimport malloc, free, rand, srand
from libc.time cimport time
from libc.math cimport pi, cos, sin
from libc.string cimport strlen, strcpy

# Graphics (GL & SOIL)
from gl cimport *
from glfw3 cimport *
from SOIL cimport *

# Eel integration
from eel cimport Eel
# ------------------------------------------------------------------------------
"""
Data Structures
"""
from eelText cimport *
ctypedef _Character Character

from eelData cimport *
ctypedef _Point Point
ctypedef _Polygon Polygon
ctypedef _NewPolygon NewPolygon
ctypedef _PolygonContainer PolygonContainer
ctypedef _Color Color
# ------------------------------------------------------------------------------
"""
Functions
"""

cdef float ux[4096]
cdef float uy[4096]

cpdef basicRec(int x, int y, int width, int height, Eel eel):

    cdef NewPolygon p
    p.color = [0, 200, 0, 255]
    p.point_size = 1.
    p.mode = GL_POLYGON
    p.texture = 0
    p.used = 4

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

    cdef NewPolygon poly

    def __cinit__(self, x, y, **kwargs):

        self.poly.color = [255, 255, 255, 255]
        self.poly.mode = GL_LINE_LOOP
        self.poly.texture = 0
        self.point_size = 1.0

    
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


    cpdef drawTo(self, Eel eel):

        cdef int width = eel.width
        cdef int height = eel.height

        lay = self.layout()
        cdef int count = 0

        for x, y in lay:
            ux[count] = (self.x + x)*1.0 / eel.width
            uy[count] = (self.y + y)*1.0 / eel.height
            # printf("%.10f %.10f\n", ux[count], uy[count])
            count += 1

        self.poly.x = ux
        self.poly.y = uy
        self.poly.used = <int> len(lay)

        eel.render(&self.poly)
# ------------------------------------------------------------------------------
# TODO: Make it work with multiple fonts at a time
# cdef Character *font
# font = NULL

"""
Base Text (Cython Implementation)
"""

cdef class _BaseText(_BaseFigure):

    cdef int textlen, fontsize
    cdef char *text
    cdef char *fontname
    cdef Character *font
    # cdef NewPolygon poly

    def __cinit__(self, x, y, *, char *text, char *font, int size=32, **kwargs):
        self.setText(text)
        self.setFont(font, size)

        self.poly.color = [255, 255, 255, 255]
        self.poly.mode = GL_QUADS
        self.poly.point_size = 1.
        self.poly.used = 4

        self.font = NULL


    cpdef setText(self, char *text):
        self.text = text
        self.textlen = strlen(text)


    cpdef setFont(self, char *fontname, int size=32):
        self.fontname = fontname
        self.fontsize = size

        if self.font:
            free(self.font)
            self.font = NULL


    cpdef drawTo(self, Eel eel):

        cdef int i, j
        cdef char c
        cdef Character *ch
        
        cdef float xpos, ypos, fx, fy, w, h, width, height
        width = eel.width * 1.
        height = eel.height * 1.

        fx = self.x / width
        fy = self.y / height

        # NOTE: IF I EVER REWORK THE ENGINE
        # The font must be loaded after a GL context has been initialized
        # i.e. e.run()

        if (not self.font):
            self.font = loadCharacters(self.fontname, self.fontsize)

        for i in range(0, self.textlen):
            c = self.text[i]
            ch = self.font + c

            xpos = fx + ch.bear.x / width
            ypos = fy + (ch.size.y - ch.bear.y) / height

            w = ch.size.x / width
            h = ch.size.y / height

            ux[0] = ux[1] = xpos + w
            ux[2] = ux[3] = xpos

            uy[0] = uy[3] = ypos
            uy[1] = uy[2] = ypos - h

            self.poly.x = ux
            self.poly.y = uy
            self.poly.texture = ch.TextureID

            eel.render(&self.poly)

            fx += (ch.advance >> 6) / width
# ------------------------------------------------------------------------------
"""
Base Figure Wrapper
"""

class BaseFigure(_BaseFigure): pass
# ------------------------------------------------------------------------------
"""
Python's Text wrapper
"""

class Text(_BaseText, BaseFigure):

    def __init__(self, x, y, **kwargs):
        self.x = x
        self.y = y
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


class Triangle(BaseFigure):

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


class Sprite(BaseFigure):
    
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


class Line(BaseFigure):

    def __init__(self, x, y, *, xp, yp):

        self.x = x
        self.y = y
        self.xp = xp
        self.yp = yp

        # self.setMode(GL_LINE)


    def layout(self):
        
        return [(0, 0), (self.xp - self.x, self.yp - self.y)]