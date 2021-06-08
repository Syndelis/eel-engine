#ifndef ELLTEXT_H
#define EELTEXT_H

// Windows ---------------------------------------------------------------------
#ifndef GL_CLAMP_TO_EDGE
#define GL_CLAMP_TO_EDGE 0x812F
#endif

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
Character *getChar(Character *font, int ind);
int u8_nextchar(char *s, int *i, int *ch);

#endif