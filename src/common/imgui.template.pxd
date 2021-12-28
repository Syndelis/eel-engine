# distutils: language = c++

from libcpp cimport bool
from glfw3 cimport *

cdef extern from "imgui.h":
    ctypedef long long __int64
    void ProgressBar(float fraction_, const ImVec2& size_arg_, const char *overlay) nogil
    $imgui_h

    enum ImGuiCol_:
        ImGuiCol_Text=0,
        ImGuiCol_TextDisabled,
        ImGuiCol_WindowBg,
        ImGuiCol_PopupBg,
        ImGuiCol_Border,
        ImGuiCol_BorderShadow,
        ImGuiCol_FrameBg,
        ImGuiCol_FrameBgHovered,
        ImGuiCol_FrameBgActive,
        ImGuiCol_TitleBg,
        ImGuiCol_TitleBgActive,
        ImGuiCol_TitleBgCollapsed,
        ImGuiCol_MenuBarBg,
        ImGuiCol_ScrollbarBg,
        ImGuiCol_ScrollbarGrab,
        ImGuiCol_ScrollbarGrabHovered,
        ImGuiCol_ScrollbarGrabActive,
        ImGuiCol_CheckMark,
        ImGuiCol_SliderGrab,
        ImGuiCol_SliderGrabActive,
        ImGuiCol_Button,
        ImGuiCol_ButtonHovered,
        ImGuiCol_ButtonActive,
        ImGuiCol_Header,
        ImGuiCol_HeaderHovered,
        ImGuiCol_HeaderActive,
        ImGuiCol_Separator,
        ImGuiCol_SeparatorHovered,
        ImGuiCol_SeparatorActive,
        ImGuiCol_ResizeGrip,
        ImGuiCol_ResizeGripHovered,
        ImGuiCol_ResizeGripActive,
        ImGuiCol_Tab,
        ImGuiCol_TabHovered,
        ImGuiCol_TabActive,
        ImGuiCol_TabUnfocused,
        ImGuiCol_TabUnfocusedActive,
        ImGuiCol_PlotLines,
        ImGuiCol_PlotLinesHovered,
        ImGuiCol_PlotHistogram,
        ImGuiCol_PlotHistogramHovered,
        ImGuiCol_TableHeaderBg,
        ImGuiCol_TableBorderStrong,
        ImGuiCol_TableBorderLight,
        ImGuiCol_TableRowBg,
        ImGuiCol_TableRowBgAlt,
        ImGuiCol_TextSelectedBg,
        ImGuiCol_DragDropTarget,
        ImGuiCol_NavHighlight,
        ImGuiCol_NavWindowingHighlight,
        ImGuiCol_NavWindowingDimBg,
        ImGuiCol_ModalWindowDimBg,
        ImGuiCol_COUNT

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
