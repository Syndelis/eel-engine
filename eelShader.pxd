cdef extern from "eelShader.h":

    void useTextShader(unsigned int texture, int r, int g, int b, int a) nogil
    void resetShader() nogil