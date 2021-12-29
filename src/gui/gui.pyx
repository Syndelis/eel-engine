# distutils: language = c++
# ------------------------------------------------------------------------------
# IMPORTS & CONSTANTS
# ------------------------------------------------------------------------------

cdef extern from "Python.h":
    const char *PyUnicode_AsUTF8(object unicode)


from libc.float cimport FLT_MIN, FLT_MAX
from libcpp cimport bool as cppbool

import numpy as np
cimport imgui
cimport conf

ImVec2_Zeroes = np.zeros((2,))
ImVec4_Zeroes = np.zeros((4,))

ImVec2_Ones = np.ones((2,))
ImVec4_Ones = np.ones((4,))

ImVec2_Min_Zero = np.array((FLT_MIN, 0))

# ------------------------------------------------------------------------------
# SETUP
# ------------------------------------------------------------------------------

cdef imgui.ImGuiIO *io = NULL

cdef Init(GLFWwindow *window):
    imgui.CreateContext()
    io = imgui.GetIO()
    conf.setEelStyle(imgui.GetStyle())

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

# IMGUI_H --------------------------------------------------
cpdef Begin(name: str, p_open=True, imgui.ImGuiWindowFlags flags=0):

    cdef cppbool cp_open = p_open
    imgui.Begin(PyUnicode_AsUTF8(name), &cp_open, flags)

    return cp_open


cpdef End():
    imgui.End()


# IMGUI_WIDGETS_H ------------------------------------------

# Text ---------------------------------
cpdef Text(text: str, color=None):

    cdef const char *ctext = PyUnicode_AsUTF8(text)

    if color is None:
        imgui.TextUnformatted(ctext)
        return

    cdef double [:] color_view = color
    cdef imgui.ImVec4 color_vec4

    color_vec4.x = color_view[0]
    color_vec4.y = color_view[1]
    color_vec4.z = color_view[2]
    color_vec4.w = .0

    if color.size > 3:
        color_vec4.w = color_view[3]

    imgui.TextColored(color_vec4, ctext)


cpdef TextDisabled(text: str):
    imgui.TextDisabled(PyUnicode_AsUTF8(text))


cpdef TextWrapped(text: str):
    imgui.TextWrapped(PyUnicode_AsUTF8(text))


cpdef LabelText(label: str, text: str):
    imgui.LabelText(PyUnicode_AsUTF8(label), PyUnicode_AsUTF8(text))


cpdef BulletText(text: str):
    imgui.BulletText(PyUnicode_AsUTF8(text))

# Main ---------------------------------

cpdef Button(label: str, size=ImVec2_Zeroes):
    
    cdef double [:] size_view = size
    cdef imgui.ImVec2 size_vec2

    size_vec2.x = size[0]
    size_vec2.y = size[1]

    return imgui.Button(PyUnicode_AsUTF8(label), size_vec2)


cpdef SmallButton(label: str):
    return imgui.SmallButton(PyUnicode_AsUTF8(label))


cpdef InvisibleButton(str_id: str, size, int flags=0):

    cdef double [:] size_view = size
    cdef imgui.ImVec2 size_vec2

    size_vec2.x = size[0]
    size_vec2.y = size[1]

    return imgui.InvisibleButton(PyUnicode_AsUTF8(str_id), size_vec2, flags)


cpdef ArrowButton(str_id: str, imgui.ImGuiDir dir_):
    return imgui.ArrowButton(PyUnicode_AsUTF8(str_id), dir_)

# TODO: Image, ImageButton

cpdef Checkbox(label: str, v):

    cdef cppbool cv = v
    imgui.Checkbox(PyUnicode_AsUTF8(label), &cv)

    return cv

# TODO: CheckboxFlags

cpdef RadioButton(label: str, cppbool active):
    cdef cppbool changed = imgui.RadioButton(PyUnicode_AsUTF8(label), active)
    return active ^ changed


cpdef ProgressBar(float fraction):
    imgui.ProgressBar(fraction)


cpdef Bullet():
    imgui.Bullet()


# Combo Box ----------------------------

cpdef BeginCombo(label: str, preview_value: str, imgui.ImGuiComboFlags flags=0):

    return imgui.BeginCombo(PyUnicode_AsUTF8(label), PyUnicode_AsUTF8(preview_value), flags)
    # return str(preview_value)


cpdef EndCombo():
    imgui.EndCombo()


cpdef Selectable(label: str, selected: bool, imgui.ImGuiSelectableFlags flags=0):

    cdef cppbool p_selected = selected
    imgui.Selectable(PyUnicode_AsUTF8(label), &p_selected, flags)

    return p_selected

# Drag Sliders -------------------------

# IMGUI_DEMO_H ---------------------------------------------

cpdef ShowDemoWindow():
    imgui.ShowDemoWindow()