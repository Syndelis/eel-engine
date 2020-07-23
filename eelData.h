#ifndef EELDATA_HEADER
#define EELDATA_HEADER

typedef unsigned char byte;

struct _Point {
    float x, y;
};

struct _Color {
    byte r, g, b, a;
};

struct _Polygon {

    float *x, *y;
    int used;

    struct _Color color;
    float point_size;
    unsigned int mode, texture;

};

struct _key {
    int key;

    union {
        int _key_mods;
        struct {
            char scancode, action, mods;
        };
    };
};

#endif