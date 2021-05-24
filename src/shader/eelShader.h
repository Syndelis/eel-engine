#ifndef EELSHADER_H
#define EELSHADER_H

static unsigned int shader_program = 0;
static unsigned char is_glew_init = 0;

static const char *text_vertsrc =
"#version 120\n"
"varying vec2 TexCoords;\n"
"void main() {\n"
"gl_Position = gl_ProjectionMatrix * vec4(gl_Vertex.xy, 0.0, 1.0);\n"
"TexCoords = gl_MultiTexCoord0.st;}\0";

static const char *text_fragsrc =
"#version 330 core\n"
"in vec2 TexCoords;\n"
"out vec4 color;\n"
"uniform sampler2D text;\n"
"uniform vec4 textColor;\n"
"void main() {\n"
"vec4 sampled = vec4(1.0, 1.0, 1.0, texture(text, TexCoords).r);\n"
"color = textColor * sampled;}\0";

static int TEXTSHADER = -1;

void forceGlew();

int newShader(char *vertfile, char *fragfile);
void useTextShader(unsigned int texture, int r, int g, int b, int a);
void resetShader();

void useProgram(int program);
void deleteProgram(int program);
int getUniformLocation(int program, char *name);
void setUniform1i(int loc, int v0);
void setUniform2i(int loc, int v0, int v1);
void setUniform3i(int loc, int v0, int v1, int v2);
void setUniform4i(int loc, int v0, int v1, int v2, int v3);
void setUniform1f(int loc, float v0);
void setUniform2f(int loc, float v0, float v1);
void setUniform3f(int loc, float v0, float v1, float v2);
void setUniform4f(int loc, float v0, float v1, float v2, float v3);

#endif