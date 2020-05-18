cdef extern from "eelData.h":

    ctypedef unsigned char byte
    cdef struct _Color:
        byte r, g, b, a

    cdef struct _Point:
        int x, y

    cdef struct _Polygon:
        short int used
        char mode, texture
        _Color color
        float point_size
        
        int hashdata
        _Point coord
        _Polygon *next

    cdef struct _PolygonContainer:
        _Polygon *poly
        _PolygonContainer *next

    cdef struct _key:
        int key
        char scancode, action, mods