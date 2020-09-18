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
from glew cimport glewInit, glBindFramebuffer, glFramebufferTexture, glDrawBuffers, glCheckFramebufferStatus, glGenFramebuffers, GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_FRAMEBUFFER_COMPLETE
from glfw3 cimport *
from gl cimport *
from SOIL cimport *

# Python STDlib
from enum import Enum
# ------------------------------------------------------------------------------
"""
Data Structures
"""
from eelData cimport *
from eelCallbacks cimport *
from eelShader cimport *
ctypedef _Point Point
ctypedef _Polygon Polygon
ctypedef _key Key
ctypedef _Color Color
# ------------------------------------------------------------------------------
"""
Auxiliary
"""
# cdef class CursorValue:
#     cdef GLFWcursor *cursor
#     cdef GLFWcursor *get(self)
# ------------------------------------------------------------------------------
"""
Classes
"""
cdef class Paintable:

    cdef unsigned int framebuffer
    cdef int _width, _height

    cdef void render(self, Polygon *poly)


cdef class Canvas(Paintable):

    cdef unsigned int texture
    cdef Polygon poly
    cdef int _x, _y
    cdef float posx[4]
    cdef float posy[4]

    cpdef drawTo(self, Paintable target)
    cpdef clear(self)

    cpdef getDimensions(self)
    cpdef getWidth(self)
    cpdef getHeight(self)

    cpdef getX(self)
    cpdef setX(self, int x)

    cpdef getY(self)
    cpdef setY(self, int y)

    cpdef getPos(self)
    cpdef setPos(self, pos)


cdef class Eel(Paintable):

    # Drawing
    cdef public float point_size
    cdef public Color clear_color, draw_color

    # Window
    cdef GLFWwindow *window
    cdef int window_id, window_open
    cdef int x, y
    cdef byte fullscreen
    cdef public object name
    cdef public object deco_draw
    cdef public object deco_load

    cdef public object _cursor

    # Technical
    cdef byte frame_read
    cdef timespec last_frame
    cdef float _fps
    cdef byte vsync

    cpdef close(self)
    cpdef open(self)

    cdef void render(self, Polygon *poly)

    cpdef setColor(self, int r, int g, int b, int a=*)
    cpdef setClearColor(self, int r, int g, int b, int a=*)
    cpdef setPointSize(self, float size)

    cpdef calculateFPS(self)
    cpdef start(self)
    cpdef run(self)
    cpdef getFps(self)

    cpdef getDimensions(self)
    cpdef setDimensions(self, dim)

    cpdef getWidth(self)
    cpdef setWidth(self, int width)

    cpdef getHeight(self)
    cpdef setHeight(self, int height)

    cpdef getMouse(self)
    cpdef setMouse(self, pos)

    cpdef getOpacity(self)
    cpdef setOpacity(self, float op)

    # cpdef toggleTransparency(self)

    cpdef getCursor(self)
    cpdef setCursor(self, cursor_enum)
# ------------------------------------------------------------------------------
"""
Functions
"""
cpdef keyPressed(key)
cpdef keyRelease(key)
cdef char _getChar()
cpdef getText()
cpdef mousePressed(int button)
cpdef mouseRelease(int button)
cpdef mouseGetTimeHeld()