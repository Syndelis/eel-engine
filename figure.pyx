"""
Imports
"""

# Libc
from libc.stdio cimport printf
from libc.stdlib cimport malloc, free, rand, srand
from libc.time cimport time
from libc.math cimport pi, cos, sin

# Graphics (GL & SOIL)
from gl cimport *
from SOIL cimport *

# Eel integration
from eel cimport Eel
# ------------------------------------------------------------------------------
"""
Data Structures
"""
from eelData cimport *
ctypedef _Point Point
ctypedef _PointList PointList
ctypedef _Color Color
# ------------------------------------------------------------------------------
"""
Functions
"""
# ------------------------------------------------------------------------------
"""
Base Figure (Cython implementation)
"""

cdef class _BaseFigure:

    cdef PointList *list
    cdef int mod, mode
    cdef unsigned int texture
    cdef int _hash
    cdef Color color
    cdef float point_size

    def __cinit__(self, x, y, **kwargs):

        self.mod = 1
        self.list = NULL
        self.texture = 0
        self.mode = GL_LINE_LOOP
        self._hash = <int> hash(self)
        self.color = [255, 255, 255, 255]
        self.point_size = 1.

    cpdef setMode(self, int mode):
        self.mode = mode

    
    cpdef setTexture(self, char *img):

        cdef unsigned int tex = SOIL_load_OGL_texture(
            img, SOIL_LOAD_RGBA, SOIL_CREATE_NEW_ID,
            SOIL_FLAG_MIPMAPS | SOIL_FLAG_NTSC_SAFE_RGB | SOIL_FLAG_INVERT_Y |
            SOIL_FLAG_COMPRESS_TO_DXT | SOIL_FLAG_MULTIPLY_ALPHA
        )

        self.texture = tex


    cpdef setColor(self, int r, int g, int b, int a=255):

        self.color.r = r
        self.color.g = g
        self.color.b = b
        self.color.a = a


    cpdef setPointSize(self, float size):

        self.point_size = size

    
    cpdef renderPoints(self):

        if (self.list == NULL):
            self.list = <PointList *> malloc(sizeof(PointList))
            self.list.next = NULL

        cdef PointList *p = self.list
        cdef int i
        lay = self.layout()

        for i in range(0, len(lay)):

            p.coord.x = self.x + lay[i][0]
            p.coord.y = self.y + lay[i][1]
            p.used = self.used
            p.mode = self.mode
            p.texture = self.texture
            p.hashdata = self._hash
            p.color = self.color

            if (i < len(lay)-1):
                if (p.next == NULL):
                    p.next = <PointList *> malloc(sizeof(PointList))
                    p.next.used = 0
                    p.next.next = NULL

            p = p.next

    cdef void printList(self):

        cdef PointList *p = self.list
        while (p != NULL):

            printf(
                "{x=%d, y=%d, used=%d, mode=%d, texture=%d, hashdata=%d, next=%p} -> \n",
                p.coord.x, p.coord.y, p.used, p.mode, p.texture, p.hashdata, p.next
            )
            p = p.next

        printf("\b\b\b\b\n")

    def __dealloc__(self):

        cdef PointList *a
        cdef PointList *b = self.list

        while (b != NULL):    

            a = b
            b = b.next
            free(a)


    def __call__(self, Eel eel):
        self.renderPoints()
        Eel.submitBatch(eel, self.list)
# ------------------------------------------------------------------------------
"""
Base Figure Wrapper
"""

class BaseFigure(_BaseFigure):

    instances = []

    @classmethod
    def new(cls, x, y, **kwargs):

        if (len(cls.instances) > 0 and type(cls.instances[-1]) != cls):
            cls.instances = []

        equals = False

        for instance in cls.instances:
            equals = True

            for attr, value in instance.__dict__.items():

                if (attr == 'x'):
                    if (x != value):
                        equals = False
                        break
                    
                elif (attr == 'y'):
                    if (y != value):
                        equals = False
                        break

                elif (attr in kwargs.keys()):
                    if (kwargs[attr] != value):
                        equals = False
                        break

            if equals:
                return instance

        ins = cls(x, y, **kwargs)
        cls.instances.append(ins)
        return ins
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

        return [(-w, h), (w, h), (w, -h), (-w, -h)]


class Line(BaseFigure):

    def __init__(self, x, y, *, xp, yp):

        self.x = x
        self.y = y
        self.xp = xp
        self.yp = yp
        self.used = 2

        # self.setMode(GL_LINE)


    def layout(self):
        
        return [(0, 0), (self.xp-self.x, self.yp-self.y)]