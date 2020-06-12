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

    # # Drawing
    # cdef public float point_size
    # cdef public Color clear_color, draw_color

    # # Window
    # cdef GLFWwindow *window
    # cdef int window_id, window_open
    # cdef int width, height, x, y
    # cdef public object name
    # cdef public object decorated

    # # Rendering
    # cdef PolygonHead *list

    def __cinit__(self, name="Eel Engine", width=640, height=480, x=-1, y=-1):
        
        global glfw_initialized

        self.name = bytes(name, "utf8")
        self.width = width
        self.height = height
        self.x = x
        self.y = y

        self.list = NULL
        self.clear_color = [000, 000, 000, 255]
        self.draw_color  = [255, 255, 255, 255]
        self.point_size = 1.0

        self.list = <PolygonContainer *> malloc(sizeof(PolygonContainer))
        self.list.poly = NULL
        self.list.next = NULL
        self.last_used = self.list

        self.deco_draw = []
        glEnable(GL_TEXTURE_2D)

        if (not glfw_initialized):
            glfw_initialized = 1
            if (not glfwInit()):
                raise Exception("GLFW could not be initialized")


    cpdef open(self):
        """
        def open(self)
        Opens a new window with the specified parameters during __init__()
        """

        self.window = glfwCreateWindow(
            self.width, self.height, self.name, NULL, NULL)

        if (not self.window):
            glfwTerminate()
            raise Exception("The window could not be created")

        glfwMakeContextCurrent(self.window)
        glfwSetKeyCallback(self.window, keyCallback)
        glfwSwapInterval(1)

        self.window_open = 1


    cdef void submit(self, Polygon *poly):

        cdef PolygonContainer *a = NULL
        cdef PolygonContainer *b = self.last_used

        # printf("Submitted polygon %d/%p\n", poly.hashdata, poly)

        while (b != NULL and b.poly != NULL and\
                (b.poly.used or b.poly.hashdata == poly.hashdata)):

            if (b.poly.hashdata == poly.hashdata and b.poly == poly):
                if (poly.next and poly.mode != GL_POINTS):
                    b.poly.used = poly.next.used
                    # printf("Renewed polygon\n")

                else: b.poly.used = 1
                return

            a = b
            b = b.next

        if (b == NULL):
            # printf("New polygon\n")
            a.next = <PolygonContainer *> malloc(sizeof(PolygonContainer))
            a = a.next

            a.poly = poly
            a.next = NULL
            self.last_used = a

        elif (b.poly == NULL or (not b.poly.used)):
            # printf("Substituted polygon\n")
            b.poly = poly
            self.last_used = b

    
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


    cpdef invalidate(self):
        """
        def invalidate(self)
        Invalidates the drawing linked list so that we can reuse allocated
        resources.
        """

        cdef PolygonContainer *p = self.list
        self.last_used = self.list

        while (p != NULL):
            if (p.poly):
                p.poly.used = 0

            p = p.next


    cdef void printList(self):

        cdef PolygonContainer *pc = self.list
        cdef Polygon *p

        printf("PRINTLIST\n")

        while (pc != NULL):
            p = pc.poly

            while (p != NULL):
                printf(
                    "{x=%.6f, y=%.6f, used=%d, mode=%d, texture=%d, hashdata=%d, next=%p} -> \n",
                    p.coord.x, p.coord.y, p.used, p.mode, p.texture, p.hashdata, p.next
                )
                p = p.next

            pc = pc.next
            printf("\b\b\b\b\n")


    cdef int countList(self):

        cdef PolygonContainer *p = self.list
        cdef int i = 0

        while (p != NULL):
            i += 1
            p = p.next

        return i


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
        pass

    cdef display(self):

        global keybuffer, keycount

        cdef PolygonContainer *pc = self.list
        cdef Polygon *p
        cdef Polygon *r
        cdef int count
        cdef float width = 1.0#self.width * 1.0
        cdef float height = 1.0#self.height * 1.0

        with nogil:

            glEnable(GL_TEXTURE_2D)
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

            while (pc != NULL):

                p = pc.poly
                r = pc.poly

                if not p:
                    pc = pc.next
                    continue

                count = 0
                if (r.texture):
                    glBindTexture(GL_TEXTURE_2D, r.texture)

                # printf("glBegin(%d);\n", r.mode)
                glBegin(r.mode)
                while (count < r.used):

                    if (p.texture):
                        glTexCoord2f(xcoord[count], ycoord[count])

                    glColor4f(
                        p.color.r / 255.0, p.color.g / 255.0,
                        p.color.b / 255.0, p.color.a / 255.0
                    )
                    # printf("0x%x%x%x%x:", p.color.r, p.color.g, p.color.b, p.color.a)
                    # printf("{%.6f, %.6f};\n", p.coord.x/width, p.coord.y/height)
                    glPointSize(p.point_size)
                    glVertex2f(p.coord.x / width, p.coord.y / height)
                    p = p.next

                    count += 1

                glEnd()
                # printf("\n")
                # printf("glEnd();\n")
                glBindTexture(GL_TEXTURE_2D, 0)
                
                pc = pc.next


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

        while (not glfwWindowShouldClose(self.window)):

            self.invalidate()
            for i in self.deco_draw:
                i(self)

            # self.printList()

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

            self.display()
            glFlush()

            glfwSwapBuffers(self.window)
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