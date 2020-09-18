#include <GLFW/glfw3.h>
#include "eelData.h"
#include "eelCallbacks.h"
#include <math.h>
#include <stdio.h>
#include <time.h>

// -----------------------------------------------------------------------------
// AUX

double getTime() {
    
    struct timespec temp;
    clock_gettime(CLOCK_MONOTONIC_RAW, &temp);

    return temp.tv_sec + (temp.tv_nsec / 1000000000.0);

}

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
// TEXT INPUT

void charCallback(GLFWwindow *window, unsigned int codepoint) {

    _input[_index] = codepoint;
    _index = (_index + 1) % 256;

}

unsigned int _popChar() {

    return _index ? _input[--_index] : 0;

}

int _charCount() {

    return _index;

}
// -----------------------------------------------------------------------------
// MOUSE INPUT

void mouseCallback(GLFWwindow *window, int button, int action, int mods) {

    if (action) {
        mouse_button |= 1 << button;
        time_delta = getTime();
    }

    else {
        mouse_button &= (~(1 << button));
        time_delta = getTime() - time_delta;
    }

}

int _mousePressed(int button) {

    return mouse_button & (1 << button);

}

float _getMouseDelta() {

    if (mouse_button)
        return getTime() - time_delta;

    else
        return time_delta;

}

void _mouseRelease(int button) {

    mouse_button &= (~(1 << button));

}