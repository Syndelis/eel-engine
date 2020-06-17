"""
Imports
"""

# Libc
from libc.stdio cimport printf
from libc.stdlib cimport malloc, free, rand, srand
from libc.time cimport time
from libc.math cimport pi, cos, sin

# Posix
from posix.time cimport timespec

# Graphics (GL + GLFW & SOIL)
from glfw3 cimport *
from gl cimport *
from SOIL cimport *
# ------------------------------------------------------------------------------
"""
Data Structures
"""
from eelData cimport *
from eelCallbacks cimport *
# from figure import _BaseFigure
ctypedef _Point Point
ctypedef _Polygon Polygon
ctypedef _PolygonContainer PolygonContainer
# ctypedef _PolygonHead PolygonHead
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
    cdef public object deco_load

    # Technical
    cdef byte frame_read
    cdef timespec last_frame
    cdef float _fps
    cdef byte vsync

    # Rendering
    cdef PolygonContainer *list
    cdef PolygonContainer *last_used

    cpdef open(self)

    cdef void submit(self, Polygon *poly)
    cpdef invalidate(self)

    cpdef setColor(self, int r, int g, int b, int a=*)
    cpdef setClearColor(self, int r, int g, int b, int a=*)
    cpdef setPointSize(self, float size)

    cdef void printList(self)
    cdef int countList(self)
    cdef display(self)
    cpdef start(self)
    cpdef run(self)
    cpdef getFps(self)
    cpdef getDimensions(self)
# ------------------------------------------------------------------------------
"""
Functions
"""
cpdef keyPressed(key)