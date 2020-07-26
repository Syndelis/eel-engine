#include "eelShader.h"
#include <GL/glew.h>
#include <GL/gl.h>
#include <stdio.h>
#include <stdlib.h>

void forceGlew() {

	if (!is_glew_init) {
		glewInit();
		is_glew_init = 1;
	}

}

char *readFile(char *filename, int *len) {

    FILE *f = fopen(filename, "r");

    if (!f) return NULL;

    fseek(f, 0, SEEK_END);
    int n = ftell(f) -1, i = 0;
    fseek(f, 0, SEEK_SET);
    char c, *text = (char*)malloc(sizeof(char)*(++n));

    while (!feof(f)) if ((c = fgetc(f)) != EOF) text[i++] = c;
    if (len) *len = n;

    fclose(f);

    return text;
}

int getShader() {

	if (!shader_program) {

		forceGlew();

		int success;
		char infolog[512];

		int vtx = glCreateShader(GL_VERTEX_SHADER);
		glShaderSource(vtx, 1, &vertex_src, NULL);
		glCompileShader(vtx);

		glGetShaderiv(vtx, GL_COMPILE_STATUS, &success);
		if (!success) {
			glGetShaderInfoLog(vtx, 512, NULL, infolog);
			printf("ERROR::SHADER::VERTEX::COMPILE\n%s", infolog);
		}

		int frg = glCreateShader(GL_FRAGMENT_SHADER);
		glShaderSource(frg, 1, &frag_src, NULL);
		glCompileShader(frg);

		glGetShaderiv(frg, GL_COMPILE_STATUS, &success);
		if (!success) {
			glGetShaderInfoLog(frg, 512, NULL, infolog);
			printf("ERROR::SHADER::FRAG::COMPILE\n%s", infolog);
		}

		shader_program = glCreateProgram();
		glAttachShader(shader_program, vtx);
		glAttachShader(shader_program, frg);
		glLinkProgram(shader_program);

		glGetProgramiv(shader_program, GL_LINK_STATUS, &success);
		if (!success) {
			glGetProgramInfoLog(shader_program, 512, NULL, infolog);
			printf("ERROR::SHADER::PROGRAM::LINK\n%s", infolog);
		}

		glDeleteShader(vtx);
		glDeleteShader(frg);

	}

	return shader_program;

}

void useTextShader(unsigned int texture, int r, int g, int b, int a) {

	unsigned int sh = getShader();
	float t = 255.0;
	glUseProgram(sh);
	glUniform4f(
		glGetUniformLocation(sh, "textColor"),
		r/t, g/t, b/t, a/t
	);

	unsigned int tex;
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_2D, texture);
	glUniform1i(glGetUniformLocation(sh, "text"), 0);

}

void resetShader() {

	forceGlew();
	glUseProgram(0);

}