from glfw3 cimport GLFWwindow
from eelData cimport _key

cdef extern from "eelCallbacks.h":

    void keyCallback(GLFWwindow *window, int key, int scan, int action, int mods)
    int _keyPressed(int key)
    void _keyRelease(int key)

    void charCallback(GLFWwindow *window, unsigned int codepoint)
    unsigned int _popChar()
    int _charCount()

    void mouseCallback(GLFWwindow *window, int button, int action, int mods)
    int _mousePressed(int button)
    void _mouseRelease(int button)
    float _getMouseDelta()