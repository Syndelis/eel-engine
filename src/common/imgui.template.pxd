# distutils: language = c++

from libcpp cimport bool
from glfw3 cimport *

cdef extern from "imgui.h":
    ctypedef long long __int64
    void ProgressBar(float fraction_, const ImVec2& size_arg_, const char *overlay) nogil
    $imgui_h


cdef extern from "imgui.h" namespace "ImGui":
    $imgui_namespace


cdef extern from "imgui_impl_opengl3.h":
    bool ImGui_ImplOpenGL3_Init(const char *glsl_version) nogil
    void ImGui_ImplOpenGL3_Shutdown() nogil
    void ImGui_ImplOpenGL3_NewFrame() nogil
    void ImGui_ImplOpenGL3_RenderDrawData(ImDrawData *draw_data) nogil


cdef extern from "imgui_impl_glfw.h":
    bool ImGui_ImplGlfw_InitForOpenGL(GLFWwindow *window, bool install_callbacks) nogil
    bool ImGui_ImplGlfw_InitForVulkan(GLFWwindow *window, bool install_callbacks) nogil
    bool ImGui_ImplGlfw_InitForOther(GLFWwindow *window, bool install_callbacks) nogil
    void ImGui_ImplGlfw_Shutdown() nogil
    void ImGui_ImplGlfw_NewFrame() nogil
