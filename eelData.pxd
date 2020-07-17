cdef extern from "eelData.h":

    ctypedef unsigned char byte
    cdef struct _Color:
        byte r, g, b, a

    cdef struct _Point:
        float x, y

    cdef struct _Polygon:
        short int used
        byte mode, texture
        _Color color
        float point_size
        
        int hashdata
        _Point coord
        _Polygon *next

    cdef struct _NewPolygon:
        float *x
        float *y
        int used
        
        _Color color
        float point_size
        unsigned int mode, texture

    cdef struct _PolygonContainer:
        _Polygon *poly
        _PolygonContainer *next

    cdef struct _key:
        int key
        char scancode, action, mods