#version 330
in vec2 TexCoords;
in vec4 vertColor;
out vec4 color;

uniform sampler2D canvasTexture;
uniform vec2 resolution;

const float radius = .8;
const float softness = .5;
const float opacity = .5;
const vec4 vigColor = vec4(0., 0., 0., 1.);

void main() {

    float aspect = resolution.x / resolution.y;
    aspect = max(aspect, 1. / aspect); // for portrait mode

    float v = 1. - smoothstep(
        radius, radius-softness, 
        length((TexCoords - vec2(.5)) * aspect)
    );

    color = mix(texture(canvasTexture, TexCoords), vigColor, v*opacity);

}