cdef extern from "eelData.h":

    ctypedef unsigned char byte
    cdef struct _Color:
        byte r, g, b, a

    cdef struct _Point:
        int x, y

    cdef struct _PointList:
        short int used
        char mode, texture
        _Color color
        float point_size
        
        int hashdata
        _Point coord
        _PointList *next

    cdef struct _PointListHead:
        _PointList *start
        char clear

    cdef struct _key:
        int key
        char scancode, action, mods