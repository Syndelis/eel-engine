cdef extern from "/usr/include/SOIL/SOIL.h":

    cdef enum:
        SOIL_LOAD_AUTO
        SOIL_LOAD_L
        SOIL_LOAD_LA
        SOIL_LOAD_RGB
        SOIL_LOAD_RGBA

    cdef enum:
        SOIL_CREATE_NEW_ID

    cdef enum:
        SOIL_FLAG_POWER_OF_TWO
        SOIL_FLAG_MIPMAPS
        SOIL_FLAG_TEXTURE_REPEATS
        SOIL_FLAG_MULTIPLY_ALPHA
        SOIL_FLAG_INVERT_Y
        SOIL_FLAG_COMPRESS_TO_DXT
        SOIL_FLAG_DDS_LOAD_DIRECT
        SOIL_FLAG_NTSC_SAFE_RGB
        SOIL_FLAG_CoCg_Y
        SOIL_FLAG_TEXTURE_RECTANGLE

    cdef enum:
        SOIL_SAVE_TYPE_TGA
        SOIL_SAVE_TYPE_BMP
        SOIL_SAVE_TYPE_DDS

    cdef enum:
        SOIL_HDR_RGBE
        SOIL_HDR_RGBdivA
        SOIL_HDR_RGBdivA2

    unsigned int SOIL_load_OGL_texture(char* filename, int force_channels, unsigned int reuse_texture_ID, unsigned int flags)

    unsigned int SOIL_load_OGL_cubemap(char* x_pos_file, char* x_neg_file, char* y_pos_file, char* y_neg_file, char* z_pos_file, char* z_neg_file, int force_channels, unsigned int reuse_texture_ID, unsigned int flags)

    unsigned int SOIL_load_OGL_single_cubemap(char* filename, char face_order[6], int force_channels, unsigned int reuse_texture_ID, unsigned int flags)

    unsigned int SOIL_load_OGL_HDR_texture(char* filename, int fake_HDR_format, int rescale_to_max, unsigned int reuse_texture_ID, unsigned int flags)

    unsigned int SOIL_load_OGL_texture_from_memory(unsigned char* buffer, int buffer_length, int force_channels, unsigned int reuse_texture_ID, unsigned int flags)

    unsigned int SOIL_load_OGL_cubemap_from_memory(unsigned char* x_pos_buffer, int x_pos_buffer_length, unsigned char* x_neg_buffer, int x_neg_buffer_length, unsigned char* y_pos_buffer, int y_pos_buffer_length, unsigned char* y_neg_buffer, int y_neg_buffer_length, unsigned char* z_pos_buffer, int z_pos_buffer_length, unsigned char* z_neg_buffer, int z_neg_buffer_length, int force_channels, unsigned int reuse_texture_ID, unsigned int flags)

    unsigned int SOIL_load_OGL_single_cubemap_from_memory(unsigned char* buffer, int buffer_length, char face_order[6], int force_channels, unsigned int reuse_texture_ID, unsigned int flags)

    unsigned int SOIL_create_OGL_texture(unsigned char* data, int width, int height, int channels, unsigned int reuse_texture_ID, unsigned int flags)

    unsigned int SOIL_create_OGL_single_cubemap(unsigned char* data, int width, int height, int channels, char face_order[6], unsigned int reuse_texture_ID, unsigned int flags)

    int SOIL_save_screenshot(char* filename, int image_type, int x, int y, int width, int height)

    unsigned char* SOIL_load_image(char* filename, int* width, int* height, int* channels, int force_channels)

    unsigned char* SOIL_load_image_from_memory(unsigned char* buffer, int buffer_length, int* width, int* height, int* channels, int force_channels)

    int SOIL_save_image(char* filename, int image_type, int width, int height, int channels, unsigned char* data)

    void SOIL_free_image_data(unsigned char* img_data)

    char* SOIL_last_result()
