/* -----------------------------------------------------------------------------
 * INCLUDES
 * -------------------------------------------------------------------------- */

#include <pybind11/pybind11.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include "imgui.h"

namespace py = pybind11;

/* -----------------------------------------------------------------------------
 * API FUNCTIONS
 * -------------------------------------------------------------------------- */

void Begin(const char *name) {
    printf("Begin ...\n");
    ImGui::Begin(name);
}

void Text(const char *text) {
    ImGui::Text(text);
}

void End() {
    ImGui::End();
}

/* -----------------------------------------------------------------------------
 * MODULE DEFINITION
 * -------------------------------------------------------------------------- */

PYBIND11_MODULE(imgui_wrapper, m) {

    m.doc() = "This is a test";

    m.def("Begin", &Begin, "Begin");
    m.def("Text", &Text, "Text");
    m.def("End", &End, "End");

}