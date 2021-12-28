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
    EXTRA_ARGS  = {'extra_compile_args': '-O2 -Wno-unused-variable -Wno-discarded-qualifiers -Wno-error=format-security -fpermissive'.split()}


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

IMGUI_PATH      = ('lib/imgui', 'lib/imgui/backends')

BASE_LIB += ('src/', 'src/common', 'src/eel', 'src/figure', 'src/gui', 'src/shader')
BASE_INC += ('src/', 'src/common', 'src/eel', 'src/figure', 'src/gui', 'src/shader')


setup(
    name='Eel Engine',
    ext_package='eelengine',
    ext_modules=cythonize([
        Extension(
            "eel",
            ["src/eel/eel.pyx", "src/shader/eelShader.c"],
            libraries=[*SOIL, *BASE, *OPENGL, *GLFW, *GLEW, 'eelCallbacks', 'eelShader'],
            library_dirs=[*BASE_LIB],
            include_dirs=[*BASE_INC],
            **EXTRA_ARGS
        ),
        Extension(
            "figure",
            ["src/figure/figure.pyx", "src/figure/eelText.c"],
            libraries=[*SOIL, *OPENGL, *FREETYPE, 'eelText'],
            library_dirs=[*BASE_LIB, *FREETYPE_PATH],
            include_dirs=[*BASE_INC, *FREETYPE_PATH],
            **EXTRA_ARGS
        ),
        Extension(
            "shader",
            ["src/shader/shader.pyx", "src/shader/eelShader.c"],
            libraries=[*OPENGL, *GLEW, 'eelShader'],
            library_dirs=[*BASE_LIB],
            include_dirs=[*BASE_INC],
            **EXTRA_ARGS
        ),
        Extension(
            "gui",
            [
                "src/gui/gui.pyx",
                "lib/imgui/imgui.cpp", "lib/imgui/imgui_draw.cpp",
                "lib/imgui/imgui_demo.cpp",
                "lib/imgui/imgui_tables.cpp", "lib/imgui/imgui_widgets.cpp",
                "lib/imgui/backends/imgui_impl_glfw.cpp",
                "lib/imgui/backends/imgui_impl_opengl3.cpp"
            ],
            libraries=[*OPENGL, *GLFW],
            library_dirs=[*BASE_LIB],
            include_dirs=[*BASE_INC, *IMGUI_PATH],
            **EXTRA_ARGS
            # **{
            #     'extra_link_args': '-Wno-unused-result -ffunction-sections -fdata-sections -Wl,--gc-sections -Wl,--print-gc-sections'.split(),
            #     **EXTRA_ARGS
            # }
        )
    ],
    include_path=[*BASE_INC], language_level='3'
    )
)