#ifndef EELCALLBACKS_H
#define EELCALLBACKS_H

#include <GLFW/glfw3.h>
#include <stdint.h>

// -----------------------------------------------------------------------------
// KEYBOARD INPUT
// One for each ASCII-key
// static unsigned long long int key_pressed = 0;
static __uint128_t key_pressed = 0; // MAY NOT BE PORTABLE FOR WINDOWS/MACOS
// static struct _key keybuffer[255];
// static char keycount = 0;

void keyCallback(GLFWwindow *window, int key, int scan, int action, int mods);
int _keyPressed(int key);
void _keyRelease(int key);
// -----------------------------------------------------------------------------
// TEXT INPUT
static unsigned int _input[256];
static int _index = 0;

void charCallback(GLFWwindow *window, unsigned int codepoint);
unsigned int _popChar();
int _charCount();

// -----------------------------------------------------------------------------
// MOUSE INPUT
static short int mouse_button = 0;
static double time_delta = 0.;
void mouseCallback(GLFWwindow *window, int button, int action, int mods);
int _mousePressed(int button);
void _mouseRelease(int button);
float _getMouseDelta();

#endif