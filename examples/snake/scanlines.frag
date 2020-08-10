#version 330
in vec2 TexCoords;
in vec4 vertColor;
out vec4 color;

uniform sampler2D canvasTexture;
uniform vec2 resolution;

const float width = 2.;
const float phase = 0.;
const float thickness = 1.;
const float opacity = .5;
const vec3 scanColor = vec3(0., 0., 0.);
const float PI = 3.14159;

void main() {

    float v = .5 * (sin(TexCoords.y * PI / width * resolution.y + phase) + 1.);
    color = texture(canvasTexture, TexCoords);
    color.rgb -= (scanColor - color.rgb) * (pow(v, thickness) - 1.) * opacity;
    color.rgb = max(color.rgb, vec3(0.));

}