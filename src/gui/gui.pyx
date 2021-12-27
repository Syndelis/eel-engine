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
cimport imgui

# Eel integration
from eel cimport Eel

# ------------------------------------------------------------------------------
#   GLOBALS
# ------------------------------------------------------------------------------

cdef imgui.ImGuiIO *io = NULL

cpdef Init(Eel window):
    imgui.CreateContext()
    io = imgui.GetIO()
    imgui.StyleColorsDark()

    imgui.ImGui_ImplGlfw_InitForOpenGL(window.window, 1)
    imgui.ImGui_ImplOpenGL3_Init(b"#version 150")

# --------------------------------------

cpdef NewFrame():
    imgui.ImGui_ImplOpenGL3_NewFrame()
    imgui.ImGui_ImplGlfw_NewFrame()
    imgui.NewFrame()


cpdef Render():
    imgui.Render()
    imgui.ImGui_ImplOpenGL3_RenderDrawData(imgui.GetDrawData())


# --------------------------------------

cpdef Terminate():
    imgui.ImGui_ImplOpenGL3_Shutdown()
    imgui.ImGui_ImplGlfw_Shutdown()
    imgui.DestroyContext()

    io = NULL

# ------------------------------------------------------------------------------
# EXPORTED FUNCTIONS
# ------------------------------------------------------------------------------

cpdef Begin(char *name):
    imgui.Begin(name)


cpdef Text(char *text):
    imgui.Text(text)


cpdef End():
    imgui.End()