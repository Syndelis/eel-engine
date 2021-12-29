from imgui cimport ImGuiStyle

cdef extern from "conf.h":
    void setNodableStyle(ImGuiStyle& _style)
    void setRaikiriStyle(ImGuiStyle& _style)
    void setExtasyStyle(ImGuiStyle& _style)
    void setEelStyle(ImGuiStyle& _style)