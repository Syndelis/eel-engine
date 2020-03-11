#include <GLFW/glfw3.h>
#include "eelData.h"
#include "eelCallbacks.h"
#include <math.h>
#include <stdio.h>

typedef struct _PointList PointList;
typedef struct _PointListHead PointListHead;

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

    return key_pressed & (1ULL << key);

}