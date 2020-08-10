#version 330
in vec2 TexCoords;
in vec4 vertColor;
out vec4 color;

uniform sampler2D canvasTexture;

const float min_luma = .7;
const vec3 dotvec = vec3(.299, .587, .114);

void main() {

    color = texture(canvasTexture, TexCoords);
    float luma = dot(dotvec, color.rgb);
    color *= vertColor * step(min_luma, luma);

}