# distutils: language = c++

from libcpp cimport bool
from glfw3 cimport *

cdef extern from "imgui.h":

    struct ImGuiWindowFlags:
        pass

    struct ImGuiContext:
        pass

    struct ImFlontAtlas:
        pass

    struct ImGuiIO:
        pass

    struct ImDrawData:
        pass


cdef extern from "imgui.h" namespace "ImGui":

    ImGuiContext *CreateContext(ImFlontAtlas *shared_font_atlas) nogil
    ImGuiContext *CreateContext() nogil
    void DestroyContext(ImGuiContext *ctx) nogil
    void DestroyContext() nogil

    ImGuiIO &GetIO() nogil

    bool Begin(const char *name, bool *p_open, ImGuiWindowFlags flags) nogil
    bool Begin(const char *name) nogil
    void End() nogil

    ImDrawData *GetDrawData() nogil

    void Render() nogil

    void NewFrame() nogil

    void Text(const char *fmt, ...) nogil

    void StyleColorsDark() nogil
    void StyleColorsLight() nogil
    void StyleColorsClassic() nogil


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
