#ifndef EELCALLBACKS_H
#define EELCALLBACKS_H

#include <GLFW/glfw3.h>
#include "eelData.h"

// One for each ASCII-key
static unsigned long long int key_pressed = 0;
static struct _key keybuffer[255];
static char keycount = 0;

void keyCallback(GLFWwindow *window, int key, int scan, int action, int mods);
int _keyPressed(int key);

#endif