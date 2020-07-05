#include "eelText.h"
#include <ft2build.h>
#include FT_FREETYPE_H
#include <freetype2/freetype/freetype.h>
#include <GL/gl.h>
#include <stdio.h>

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

    Character *char_buf = (Character *)malloc(sizeof(Character) * 256);
    unsigned int texture;

	for (unsigned char c = 1; c && c < 255; c++) {

		if (FT_Load_Char(face, c, FT_LOAD_RENDER)) {
			printf("Error loading char `%c`. Skipping\n", c);
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