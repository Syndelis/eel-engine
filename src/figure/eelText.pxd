cdef extern from "eelText.h":

    cdef struct _Vec:
        int x, y

    cdef struct _Character:

        unsigned int TextureID
        unsigned int advance
        _Vec size
        _Vec bear

    _Character *loadCharacters(char *font, int fontsize) nogil
    _Character *getChar(_Character *font, int ind) nogil
    int u8_nextchar(char *s, int *i, int *ch) nogil