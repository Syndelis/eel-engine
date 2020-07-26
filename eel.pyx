"""
Imports
"""

# Libc
from libc.stdio cimport printf
from libc.stdlib cimport malloc, free, rand, srand
from libc.time cimport time
from libc.math cimport pi, cos, sin

# Posix
from posix.time cimport clock_gettime, timespec, CLOCK_MONOTONIC_RAW

# Graphics (GL + GLFW & SOIL)
from glew cimport glewInit
from glfw3 cimport *
from gl cimport *
from SOIL cimport *
# ------------------------------------------------------------------------------
"""
Data Structuresa
"""
# from eelData cimport *
# from eelCallbacks cimport *
# # from figure import _BaseFigure
# ctypedef _Point Point
# ctypedef _Polygon Polygon
# ctypedef _PolygonHead PolygonHead
# ctypedef _key Key
# ctypedef _Color Color
# ------------------------------------------------------------------------------
"""
Globals (for constants and shared memory)
"""

# Whether the global initialization of GLFW has been executed
cdef int glfw_initialized = 0

cdef float xcoord[4]
cdef float ycoord[4]

xcoord[0] = xcoord[1] = ycoord[0] = ycoord[3] = 1
xcoord[2] = xcoord[3] = ycoord[1] = ycoord[2] = 0

# ------------------------------------------------------------------------------
"""
Eel Engine Declaration and Definition
"""

cdef class Eel:

    """
    Eel(self, name="Eel Engine", width=640, height=480)
    The window and graphics controller for the Eel Engine
    """

    def __cinit__(
        self, name="Eel Engine", width=640, height=480, x=-1, y=-1,
        vsync=True
    ):
        
        global glfw_initialized

        self.name = bytes(name, "utf8")
        self.width = width
        self.height = height
        self.x = x
        self.y = y

        self.clear_color = [000, 000, 000, 255]
        self.draw_color  = [255, 255, 255, 255]
        self.point_size = 1.0

        self.deco_draw = []
        self.deco_load = []
        glEnable(GL_TEXTURE_2D)

        self.frame_read = 0
        self._fps = 0
        self.vsync = vsync

        if (not glfw_initialized):
            glfw_initialized = 1
            if (not glfwInit()):
                raise Exception("GLFW could not be initialized")


    cpdef open(self):
        """
        def open(self)
        Opens a new window with the specified parameters during __init__()
        """

        if not self.vsync: glfwWindowHint(0x00021010, 0)

        self.window = glfwCreateWindow(
            self.width, self.height, self.name, NULL, NULL)

        if (not self.window):
            glfwTerminate()
            raise Exception("The window could not be created")

        glfwMakeContextCurrent(self.window)
        glfwSetKeyCallback(self.window, keyCallback)
        glfwSetMouseButtonCallback(self.window, mouseCallback)
        glfwSwapInterval(1)

        self.window_open = 1

    
    cpdef setColor(self, int r, int g, int b, int a=255):
        """
        def setColor(self, r, g, b, a=255)
        Makes the drawing color, from that point onwards, the specified color.
        Note that calling this will affect all subsequent draw calls.
        """

        self.draw_color.r = r
        self.draw_color.g = g
        self.draw_color.b = b
        self.draw_color.a = a

    
    cpdef setClearColor(self, int r, int g, int b, int a=255):
        """
        def setClearColor(self, r, g, b, a=255)
        Sets the clearing color to the specified color.
        """

        self.clear_color.r = r
        self.clear_color.g = g
        self.clear_color.b = b
        self.clear_color.a = a


    cpdef setPointSize(self, float size):
        """
        def setPointSize(self, size)
        Sets the drawing size of each individual point for the subsequent draws.
        """

        self.point_size = size


    def draw(self, func):
        """
        Decorator for functions that should be called every frame
        """

        self.deco_draw.append(func)
        return func


    def load(self, func):
        """
        Decorator for functions that should be only run once
        """
        self.deco_load.append(func)
        return func


    cdef void render(self, Polygon *p):

        cdef int i
        cdef float x, y

        with nogil:

            glColor4f(
                p.color.r / 255.0, p.color.g / 255.0,
                p.color.b / 255.0, p.color.a / 255.0
            )
            glPointSize(p.point_size)

            if (not p.program):
                glBindTexture(GL_TEXTURE_2D, p.texture)

            else:
                useTextShader(
                    p.texture, p.color.r, p.color.g,
                    p.color.b, p.color.a
                )

            glBegin(p.mode)
            for i in range(0, p.used):

                if p.texture:
                    glTexCoord2f(xcoord[i], ycoord[i])

                glVertex2f(p.x[i], p.y[i])

            glEnd()
            resetShader()

    
    cpdef calculateFPS(self):

        cdef timespec temp
        clock_gettime(CLOCK_MONOTONIC_RAW, &temp)

        if self.frame_read:
                self._fps = 1.0 / (
                    temp.tv_sec - self.last_frame.tv_sec +\
                    (temp.tv_nsec - self.last_frame.tv_nsec) / 1000000000.0
                )
            
        else: self.frame_read = 1
        self.last_frame.tv_sec = temp.tv_sec
        self.last_frame.tv_nsec = temp.tv_nsec


    cpdef start(self):

        """
        start(self)
        Starts GLFW's main loop
        """

        if (not self.window_open):
            raise Exception("Window has not been open")

        cdef int width, height
        cdef double time, ratio
        cdef int count

        for i in self.deco_load: i(self)

        while (not glfwWindowShouldClose(self.window)):

            glfwMakeContextCurrent(self.window)

            glClearColor(
                self.clear_color.r / 255.0, self.clear_color.g / 255.0,
                self.clear_color.b / 255.0, self.clear_color.a / 255.0
            )

            glColor4f(
                self.draw_color.r / 255.0, self.draw_color.g / 255.0,
                self.draw_color.b / 255.0, self.draw_color.a / 255.0
            )

            glPointSize(self.point_size)

            # time = glfwGetTime()
            ratio = self.width / self.height

            glMatrixMode(GL_PROJECTION)
            glLoadIdentity()
            # glOrtho(-ratio, ratio, 1., -1., 1., -1.)
            glOrtho(0, ratio, 1., 0, 1., -1.)
            glViewport(0, 0, self.width, self.height)

            with nogil:
                glEnable(GL_TEXTURE_2D)
                glEnable(GL_BLEND)
                glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA)
                glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
                glBindTexture(GL_TEXTURE_2D, 0)
                
            for i in self.deco_draw:
                i(self)

            with nogil:
                glFlush()

            self.calculateFPS()

            if self.vsync: glfwSwapBuffers(self.window)
            glfwPollEvents()

        glfwDestroyWindow(self.window)


    cpdef run(self):
        """
        def run(self)
        Opens and starts drawing in the window.
        Equivalent to calling open() and start().
        """

        self.open()
        self.start()

    
    cpdef getFps(self):
        return self._fps


    cpdef getDimensions(self):
        return (self.width, self.height)


    cpdef setDimensions(self, dim):

        cdef int w, h
        w, h = dim

        glfwSetWindowSize(self.window, w, h)


    cpdef getMouse(self):
        cdef double x, y
        glfwGetCursorPos(self.window, &x, &y)

        return (<int> x, <int> y)


    cpdef setMouse(self, pos):

        cdef int x, y
        x, y = pos

        glfwSetCursorPos(self.window, <double> x, <double> y)

    # TODO:
    # setFps: Locks fps
    # setDimensions: redimension window
    fps = property(getFps)
    dimensions = property(getDimensions, setDimensions)
    mouse = property(getMouse, setMouse)
# ------------------------------------------------------------------------------
"""
Functions
"""

cpdef keyPressed(key):
    """
    def keyPressed(key)
    Returns wether or not said key is being hold.
    """
    t = type(key)

    if t == bytes or t == str:
        return _keyPressed(ord(key))

    elif t == int:
        return _keyPressed(key)


cpdef mousePressed(int button):
    """
    def mousePressed(button)
    Returns wether or not said button is being pressed
    """
    return _mousePressed(button)