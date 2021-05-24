cdef extern from "eelText.h":

    cdef struct _Vec:
        int x, y

    cdef struct _Character:

        unsigned int TextureID
        unsigned int advance
        _Vec size
        _Vec bear

    _Character *loadCharacters(char *font, int fontsize)