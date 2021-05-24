cdef extern from "eelShader.h":

    void forceGlew() nogil

    int newShader(char *vertfile, char *fragfile) nogil
    int newShaderFromStr(char *vertsrc, char *fragsrc) nogil

    void useTextShader(unsigned int texture, int r, int g, int b, int a) nogil
    void resetShader() nogil

    void useProgram(int program) nogil
    void deleteProgram(int program) nogil
    int getUniformLocation(int program, char *name) nogil
    void setUniform1i(int loc, int v0) nogil
    void setUniform2i(int loc, int v0, int v1) nogil
    void setUniform3i(int loc, int v0, int v1, int v2) nogil
    void setUniform4i(int loc, int v0, int v1, int v2, int v3) nogil
    void setUniform1f(int loc, float v0) nogil
    void setUniform2f(int loc, float v0, float v1) nogil
    void setUniform3f(int loc, float v0, float v1, float v2) nogil
    void setUniform4f(int loc, float v0, float v1, float v2, float v3) nogil