#version 330
in vec2 TexCoords;
in vec4 vertColor;
out vec4 color;

uniform sampler2D canvasTexture;

void main() {

    color = vertColor * texture(canvasTexture, TexCoords);

}