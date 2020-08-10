#version 330
in vec2 TexCoords;
in vec4 gl_FragCoord;
in vec4 vertColor;

out vec4 color;

uniform sampler2D canvasTexture;
uniform vec2 resolution;
vec2 direction;

const float angle = 0.;
const float radius = 3.5;

void main() {
    
    direction = vec2(
        radius / resolution.x, 0.
    );

    color = vertColor * vec4(
        texture(canvasTexture, TexCoords - direction).r,
        texture(canvasTexture, TexCoords).g,
        texture(canvasTexture, TexCoords + direction).b,
        1.
    );

}