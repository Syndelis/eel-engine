from imgui cimport ImGuiStyle

cdef extern from "conf.h":
    void setNodableStyle(ImGuiStyle& _style)