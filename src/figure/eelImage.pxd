cdef extern from "eelImage.h":
    int loadImage(char *in_filename, int *out_width, int *out_height)