#ifndef EELCALLBACKS_H
#define EELCALLBACKS_H

#include <GLFW/glfw3.h>

// -----------------------------------------------------------------------------
// KEYBOARD INPUT
// One for each ASCII-key
static unsigned long long int key_pressed = 0;
static struct _key keybuffer[255];
static char keycount = 0;

void keyCallback(GLFWwindow *window, int key, int scan, int action, int mods);
int _keyPressed(int key);
// -----------------------------------------------------------------------------
// MOUSE INPUT
static short int mouse_button = 0;
void mouseCallback(GLFWwindow *window, int button, int action, int mods);
int _mousePressed(int button);

#endif