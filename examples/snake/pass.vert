#version 120
varying vec2 TexCoords;
varying vec4 vertColor;
void main() {
    gl_Position = gl_ProjectionMatrix * vec4(gl_Vertex.xy, 0., 1.);
    TexCoords = gl_MultiTexCoord0.st;
    vertColor = gl_Color;
}