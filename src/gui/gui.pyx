# distutils: language = c++
# ------------------------------------------------------------------------------
#   IMPORTS
# ------------------------------------------------------------------------------

# Libc ---------------------------------
from libc.stdio cimport printf
from libc.stdlib cimport malloc, free, rand, srand
from libc.time cimport time
from libc.math cimport pi, cos, sin, pow, sqrt
from libc.string cimport strlen, strcpy

# Graphics (GL & IMGUI) ----------------
from glew cimport *
from gl cimport *
from glfw3 cimport *
from imgui cimport *

# Eel integration
from eel cimport Eel

# ------------------------------------------------------------------------------
#   GLOBALS
# ------------------------------------------------------------------------------

cdef ImGuiIO *io = NULL

cpdef startGUI(Eel window):
    CreateContext()
    io = GetIO()
    StyleColorsDark()

    ImGui_ImplGlfw_InitForOpenGL(window.window, 1)
    ImGui_ImplOpenGL3_Init(b"#version 330 core")

# --------------------------------------

cpdef updateGUI():
    ImGui_ImplOpenGL3_NewFrame()
    ImGui_ImplGlfw_NewFrame()
    NewFrame()


# --------------------------------------

cpdef endGUI():
    ImGui_ImplOpenGL3_Shutdown()
    ImGui_ImplGlfw_Shutdown()
    DestroyContext()

    io = NULL

# ------------------------------------------------------------------------------
#   CLASSES
# ------------------------------------------------------------------------------

cdef class Window:

    cdef public object name

    def __cinit__(self, name="Window"):
        self.name = bytes(name, "utf8")


    cpdef draw(self):
        Begin(self.name)
        Text(b"This is a test")
        End()