#version 330
in vec2 TexCoords;
in vec4 vertColor;
out vec4 color;

uniform sampler2D canvasTexture;

const vec2 distortionFactor = vec2(1.06, 1.065);
const float feather = 0.02;
const float scaleFactor = 1.;

void main() {

    vec2 uv = TexCoords * 2. - vec2(1.);
    
    uv *= scaleFactor;
    uv += (uv.yx * uv.yx) * uv * (distortionFactor - 1.);

    float mask = (1. - smoothstep(1. - feather, 1., abs(uv.x))) *\
                 (1. - smoothstep(1. - feather, 1., abs(uv.y)));

    uv = (uv + vec2(1.)) / 2.;
    color = vertColor * texture(canvasTexture, uv) * mask;

}