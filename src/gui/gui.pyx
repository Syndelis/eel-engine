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

cpdef startGUI(Eel window):
    CreateContext()
    # io = GetIO()
    StyleColorsDark()

    ImGui_ImplGlfw_InitForOpenGL(window.window, 1)
    ImGui_ImplOpenGL3_Init(b"#version 150")

# --------------------------------------

cpdef updateGUI():
    ImGui_ImplOpenGL3_NewFrame()
    ImGui_ImplGlfw_NewFrame()
    NewFrame()


cpdef renderGUI():
    Render()
    ImGui_ImplOpenGL3_RenderDrawData(GetDrawData())


# --------------------------------------

cpdef endGUI():
    ImGui_ImplOpenGL3_Shutdown()
    ImGui_ImplGlfw_Shutdown()
    DestroyContext()