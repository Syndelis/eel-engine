#include <GLFW/glfw3.h>
#include "eelData.h"
#include "eelCallbacks.h"
#include <math.h>
#include <stdio.h>

// -----------------------------------------------------------------------------
// KEYBOARD INPUT

void keyCallback(GLFWwindow *window, int key, int scan, int action, int mods) {

    // Toggles the bit corresponding to the key pressed's ASCII code

    if (action)
        key_pressed |= 1ULL << key;

    else key_pressed &= (~(1ULL << key));

    // Not using keybuffer right now due to it exploding
    // keybuffer[keycount].key = key;
    // keybuffer[keycount]._key_mods = (scan << 16) | (action << 8) | mods;
    // keycount++;

}

int _keyPressed(int key) {

    return (key_pressed & (1ULL << key)) > 0ULL;

}

void _keyRelease(int key) {

    key_pressed &= (~(1ULL << key));

}
// -----------------------------------------------------------------------------
// MOUSE INPUT

void mouseCallback(GLFWwindow *window, int button, int action, int mods) {

    if (action)
        mouse_button |= 1 << button;

    else mouse_button &= (~(1 << button));

}

int _mousePressed(int button) {

    return mouse_button & (1 << button);

}

void _mouseRelease(int button) {

    mouse_button &= (~(1 << button));

}