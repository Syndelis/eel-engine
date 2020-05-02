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
# ctypedef _PointList PointList
# ctypedef _PointListHead PointListHead
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

xcoord[0] = xcoord[3] = ycoord[0] = ycoord[1] = 0.0
xcoord[1] = xcoord[2] = ycoord[2] = ycoord[3] = 1.0
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
    # cdef PointListHead *list

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

        self.list = <PointListHead *> malloc(sizeof(PointListHead))
        self.list.start = NULL
        self.list.clear = 0

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


    cpdef submit(
        self, int x, int y, int used,
        int hashdata=0, int mode=GL_LINE_LOOP, int texture=0, float size=1.,
        byte cr=255, byte cg=255, byte cb=255, byte ca=255):
        """
        def submit(self, x, y, used, mode=GL_LINE_LOOP, texture=0, size=1.,
                    cr=255, cg=255, cb=255, ca=255)
        Submits a point to be drawn at x, y with the specified mode, texture,
        size and color.
        """

        cdef PointList *p
        cdef PointList *a
        cdef PointList *b
        cdef int revalidated = 0

        if (self.list.start == NULL):
            self.list.start = <PointList *> malloc(sizeof(PointList))
            p = self.list.start
            p.coord.x = x
            p.coord.y = y
            p.used = used
            p.mode = mode
            p.texture = texture
            p.hashdata = hashdata
            p.point_size = size
            p.color = [cr, cg, cb, ca]
            p.next = NULL

        else:
            a = self.list.start
            b = self.list.start

            while (b != NULL and a.used):
                a = b
                b = b.next

                if (a.hashdata == hashdata):
                    a.used = used
                    revalidated += 1

                    if (revalidated == used): return

            if (a.used):
                a.next = <PointList *> malloc(sizeof(PointList))
                p = a.next
                p.next = NULL
            
            else:
                p = a

            p.coord.x = x
            p.coord.y = y
            p.used = used
            p.mode = mode
            p.texture = texture
            p.hashdata = hashdata
            p.point_size = size
            p.color = [cr, cg, cb, ca]
    
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


    cdef void submitBatch(self, PointList *batch):

        cdef PointList *p = batch
        while (p != NULL):
            self.submit(
                p.coord.x, p.coord.y, p.used,
                p.hashdata, p.mode, p.texture, p.point_size,
                p.color.r, p.color.g, p.color.b, p.color.a
            )

            p = p.next


    cpdef invalidate(self):
        """
        def invalidate(self)
        Invalidates the drawing linked list so that we can reuse allocated
        resources.
        """

        cdef int i = 0
        cdef PointList *p = self.list.start

        while (p != NULL):
            i += 1
            p.used = 0
            p = p.next


    cdef void printList(self):

        cdef PointList *p = self.list.start
        while (p != NULL):

            printf(
                "{x=%d, y=%d, used=%d, mode=%d, texture=%d, hashdata=%d, next=%p} -> \n",
                p.coord.x, p.coord.y, p.used, p.mode, p.texture, p.hashdata, p.next
            )
            p = p.next

        printf("\b\b\b\b\n")


    cdef int countList(self):

        cdef PointList *p = self.list.start
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

        cdef PointList *i = self.list.start
        cdef PointList *r
        cdef int count
        cdef float width = self.width * 1.0
        cdef float height = self.height * 1.0

        with nogil:

            glEnable(GL_TEXTURE_2D)
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)

            while (i != NULL):

                r = i

                count = 0
                if (r.texture):
                    glBindTexture(GL_TEXTURE_2D, r.texture)

                # printf("glBegin(%d);\n", r.mode)
                glBegin(r.mode)
                while (i != NULL and count < r.used):

                    if (i.texture):
                        glTexCoord2f(xcoord[count], ycoord[count])

                    glColor4f(
                        i.color.r / 255.0, i.color.g / 255.0,
                        i.color.b / 255.0, i.color.a / 255.0
                    )
                    glPointSize(i.point_size)
                    glVertex2f(i.coord.x / width, i.coord.y / height)
                    # printf("glVertex2f(%.2f, %.2f);\n", i.coord.x, i.coord.y);
                    i = i.next

                    count += 1

                glEnd()
                # printf("glEnd();\n")
                glBindTexture(GL_TEXTURE_2D, 0)


    cpdef start(self):

        """
        start(self)
        Starts GLFW's main loop
        """

        if (not self.window_open):
            raise Exception("Window has not been open")

        cdef int width, height
        cdef double time, ratio
        cdef PointList *p
        cdef int count

        while (not glfwWindowShouldClose(self.window)):

            self.invalidate()
            for i in self.deco_draw:
                i(self)

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

            p = self.list.start
            while (p != NULL):
                p.used = 0
                p = p.next
                count += 1

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