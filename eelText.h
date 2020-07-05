#ifndef ELLTEXT_H
#define EELTEXT_H

typedef struct _Vec {
    int x, y;
} Vec;

typedef struct _Character {

    unsigned int TextureID;
    unsigned int advance;
    Vec size;
    Vec bear;

} Character;

Character *loadCharacters(char *font, int fontsize);

#endif