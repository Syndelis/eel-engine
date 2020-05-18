#ifndef EELDATA_HEADER
#define EELDATA_HEADER

typedef unsigned char byte;

struct _Point {
    int x, y;
};

struct _Color {
    byte r, g, b, a;
};

struct _Polygon {
    // int used;

    union {
        int _data;
        struct {
            short int used;
            char mode, texture;
        };
    };

    struct _Color color;
    float point_size;

    int hashdata;
    struct _Point coord;
    struct _Polygon *next;
};

struct _PolygonContainer {
    struct _Polygon *poly;
    struct _PolygonContainer *next;
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