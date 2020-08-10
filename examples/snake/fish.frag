#version 120
uniform sampler2D canvasTexture;
// varying vec4 Vertex_UV;
varying vec2 TexCoords;
const float PI = 3.1415926535;

void main() {

    float aperture = 178.;//178.0;
    float apertureHalf = 0.5 * aperture * (PI / 180.0);
    float maxFactor = sin(apertureHalf);

    vec2 uv;
    vec2 xy = 2.0 * TexCoords - 1.0;
    float d = length(xy);
    if (d < (2.0-maxFactor)) {
        d = length(xy * maxFactor);
        float z = sqrt(1.0 - d * d);
        float r = atan(d, z) / PI;
        float phi = atan(xy.y, xy.x);

        uv.x = r * cos(phi) + 0.5;
        uv.y = r * sin(phi) + 0.5;
    }
    else {
        uv = TexCoords;
    }
    vec4 c = texture2D(canvasTexture, uv);
    gl_FragColor = c;

}