from glfw3 cimport GLFWwindow
from eelData cimport _key, _PointListHead

cdef extern from "eelCallbacks.h":

    # unsigned long long int key_pressed
    # _key keybuffer[255]
    # char keycount

    void keyCallback(GLFWwindow *window, int key, int scan, int action, int mods)
    int _keyPressed(int key)