#include "eelText.h"
#include <ft2build.h>
#include FT_FREETYPE_H
#include <freetype2/freetype/freetype.h>
#include <GL/gl.h>
#include <stdio.h>

// https://github.com/ryanoasis/nerd-fonts/wiki/Glyph-Sets-and-Code-Points
#define NERDFONT_START 	0xe000
#define NERDFONT_END   	0xfd46
#define ASCII_END 		0xff

#define CHR_AMNT		ASCII_END + (NERDFONT_END - NERDFONT_START)

static Character char_buf[CHR_AMNT];

Character *loadCharacters(char *font, int fontsize) {

	FT_Library ft;
	if (FT_Init_FreeType(&ft)) {
		return NULL;
	}

	FT_Face face;
	if (FT_New_Face(ft, font, 0, &face)) {
		return NULL;
	}

	FT_Set_Pixel_Sizes(face, 0, fontsize);

    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

	// NOTE: For some reason, FreeType will double-free when so many characters
	//		 are allocated, just like I'm doing here.
	//		 For this reason, until work out a solution, only a single font
	//		 can be used at a time, since it will overwrite the global font
	//		 buffer.
	//		 A possible solution is looking how to ask Cython directly for
	//		 a bunch of free space in advance.
    // Character *char_buf = (Character *)malloc(sizeof(Character) * CHR_AMNT);
    unsigned int texture;

	for (int c = 1; c && c <= CHR_AMNT; c++) {

		int ct = c > ASCII_END ? c - ASCII_END + NERDFONT_START : c;

		if (FT_Load_Char(face, ct, FT_LOAD_RENDER)) {
			printf("Error loading char `%x`. Skipping\n", ct);
			continue;
		}

        glGenTextures(1, &texture);
		glBindTexture(GL_TEXTURE_2D, texture);

		glTexImage2D(
			GL_TEXTURE_2D, 0, GL_RED,
			face->glyph->bitmap.width,
			face->glyph->bitmap.rows,
			0, GL_RED, GL_UNSIGNED_BYTE,
			face->glyph->bitmap.buffer
		);

		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
		glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

		Character *p = char_buf+c;
		p->TextureID = texture;
		p->size.x = face->glyph->bitmap.width;
		p->size.y = face->glyph->bitmap.rows;
		p->bear.x = face->glyph->bitmap_left;
		p->bear.y = face->glyph->bitmap_top;
		p->advance = face->glyph->advance.x;

		// printf(
        //     "Bound character `%c` {%u, (%d, %d), (%d, %d), %u}\n",
		// 	c, p->TextureID, p->size.x, p->size.y,
        //     p->bear.x, p->bear.y, p->advance
        // );
        glBindTexture(GL_TEXTURE_2D,0);

	}

    FT_Done_Face(face);
	FT_Done_FreeType(ft);

	return char_buf;

}

Character *getChar(Character *font, int ind) {

	int t;

	if ((t = ind - NERDFONT_START) >= 0) {
		
		if ((t += ASCII_END) >= CHR_AMNT) return font + 'E'; // Silent error
		else return font + t;

	}

	else return font + ind;

}

// Code below by Jeff Bezanson
#define isutf(c) (((c)&0xC0)!=0x80)

static const int offsetsFromUTF8[6] = {
    0x00000000UL, 0x00003080UL, 0x000E2080UL,
    0x03C82080UL, 0xFA082080UL, 0x82082080UL
};

int u8_nextchar(char *s, int *i, int *ch) {
    *ch = 0;
    int sz = 0;

    do {

        (*ch) <<= 6;
        (*ch) += (unsigned char)s[(*i)++];
        sz++;

    } while (s[*i] && !isutf(s[*i]));

    (*ch) -= offsetsFromUTF8[sz-1];

    return *ch;
}