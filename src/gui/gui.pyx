# distutils: language = c++
# ------------------------------------------------------------------------------
#   IMPORTS
# ------------------------------------------------------------------------------

cimport imgui

# ------------------------------------------------------------------------------
#   GLOBALS
# ------------------------------------------------------------------------------

cdef imgui.ImGuiIO *io = NULL

cdef Init(GLFWwindow *window):
    imgui.CreateContext()
    io = imgui.GetIO()
    imgui.StyleColorsDark()

    imgui.ImGui_ImplGlfw_InitForOpenGL(window, 1)
    imgui.ImGui_ImplOpenGL3_Init(b"#version 150")

# --------------------------------------

cdef NewFrame():
    imgui.ImGui_ImplOpenGL3_NewFrame()
    imgui.ImGui_ImplGlfw_NewFrame()
    imgui.NewFrame()


cdef Render():
    imgui.Render()
    imgui.ImGui_ImplOpenGL3_RenderDrawData(imgui.GetDrawData())


# --------------------------------------

cdef Terminate():
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