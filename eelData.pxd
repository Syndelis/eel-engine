cdef extern from "eelData.h":

    ctypedef unsigned char byte
    cdef struct _Color:
        byte r, g, b, a

    cdef struct _Point:
        float x, y

    cdef struct _Polygon:
        float *x
        float *y
        int used
        
        _Color color
        float point_size
        unsigned int mode, texture, program

    cdef struct _key:
        int key
        char scancode, action, mods