#ifndef EELDATA_HEADER
#define EELDATA_HEADER

typedef unsigned char byte;

struct _Point {
    float x, y;
};

union _Color {

    unsigned int hex;

    struct {
        byte a, b, g, r;
    };
};

struct _Polygon {

    float *x, *y;
    int used;

    union _Color color;
    float point_size;
    unsigned int mode, texture, program;

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