"""
Imports
"""

# Libc
from libc.stdio cimport printf
from libc.stdlib cimport malloc, free, rand, srand
from libc.time cimport time
from libc.math cimport pi, cos, sin

# Graphics (GL + GLFW & SOIL)
from glfw3 cimport *
from gl cimport *
from SOIL cimport *
# ------------------------------------------------------------------------------
"""
Data Structuresa
"""
from eelData cimport *
from eelCallbacks cimport *
# from figure import _BaseFigure
ctypedef _Point Point
ctypedef _PointList PointList
ctypedef _PointListHead PointListHead
ctypedef _key Key
ctypedef _Color Color
# ------------------------------------------------------------------------------
"""
Classes
"""
cdef class Eel:

    # Drawing
    cdef public float point_size
    cdef public Color clear_color, draw_color

    # Window
    cdef GLFWwindow *window
    cdef int window_id, window_open
    cdef int width, height, x, y
    cdef public object name
    cdef public object deco_draw

    # Rendering
    cdef PointListHead *list

    cpdef open(self)

    cpdef submit(self, int x, int y, int used,
        int hashdata=*, int mode=*, int texture=*, float size=*,
        byte cr=*, byte cg=*, byte cb=*, byte ca=*)
    cdef void submitBatch(self, PointList *points)
    cpdef invalidate(self)

    cpdef setColor(self, int r, int g, int b, int a=*)
    cpdef setClearColor(self, int r, int g, int b, int a=*)
    cpdef setPointSize(self, float size)

    cdef void printList(self)
    cdef int countList(self)
    cdef display(self)
    cpdef start(self)
    cpdef run(self)
# ------------------------------------------------------------------------------
"""
Functions
"""
cpdef keyPressed(key)