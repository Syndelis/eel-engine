# Cython compiler

from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

from os import name

if name == "posix":

    # LIBS -----------------------------
    BASE    = tuple()
    OPENGL  = ('GL',)
    GLFW    = ('glfw',)
    GLEW    = ('GLEW',)

    # PATHS ----------------------------
    BASE_LIB    = ('.',)
    BASE_INC    = ('.',)

    # EXRTA ARGS -----------------------
    EXTRA_ARGS  = {'extra_compile_args': '-O2 -Wno-unused-variable -Wno-discarded-qualifiers'.split()}


else:

    # LIBS -----------------------------
    BASE    = ('gdi32', 'user32', 'kernel32')
    OPENGL  = ('opengl32',)
    GLFW    = ('glfw3',)
    GLEW    = ('GLEW32',)

    # PATHS ----------------------------
    BASE_LIB    = ('.', r"C:\mingw64\x86_64-w64-mingw32\lib", r"C:\mingw64\x86_64-w64-mingw32")
    BASE_INC    = ('.', r"C:\mingw64\x86_64-w64-mingw32\include", r"C:\mingw64\x86_64-w64-mingw32")

    # EXRTA ARGS -----------------------
    EXTRA_ARGS  = {'extra_link_args': '-O2 -static-libgcc -static-libstdc++ -Wl,-Bstatic,--whole-archive -lwinpthread -Wl,--no-whole-archive'.split()}



SOIL            = ('SOIL',)
FREETYPE        = ('freetype',)
FREETYPE_PATH   = ('/usr/include/freetype2',)


setup(
    name='Eel Engine',
    ext_modules=cythonize([
        Extension(
            "eel",
            ["eel.pyx", "eelShader.c"],
            libraries=[*SOIL, *BASE, *OPENGL, *GLFW, *GLEW, 'eelCallbacks', 'eelShader'],
            library_dirs=[*BASE_LIB],
            include_dirs=[*BASE_INC],
            **EXTRA_ARGS
        ),
        Extension(
            "figure",
            ["figure.pyx", "eelText.c"],
            libraries=[*SOIL, *OPENGL, *FREETYPE, 'eelText'],
            library_dirs=[*BASE_LIB, *FREETYPE_PATH],
            include_dirs=[*BASE_INC, *FREETYPE_PATH],
            **EXTRA_ARGS
        ),
        Extension(
            "shader",
            ["shader.pyx", "eelShader.c"],
            libraries=[*OPENGL, *GLEW, 'eelShader'],
            library_dirs=[*BASE_LIB],
            include_dirs=[*BASE_INC],
            **EXTRA_ARGS
        ),
        Extension(
            "gui",
            ["gui.pyx"],
            libraries=[*OPENGL],
            library_dirs=[*BASE_LIB],
            include_dirs=[*BASE_INC],
            **EXTRA_ARGS
        )
    ])
)