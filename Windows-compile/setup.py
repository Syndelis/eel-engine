# Cython compiler
# WINDOWS 64 VERSIONS

from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

setup(
    name='Eel Engine',
    ext_modules=cythonize([
        Extension(
            "eel",
            ["eel.pyx", "eelShader.c"],
            libraries=['SOIL', 'opengl32', 'GLEW32', 'gdi32', 'user32', 'kernel32', 'glfw3', 'eelCallbacks', 'eelShader'],
            library_dirs=[".", r"C:\mingw64\x86_64-w64-mingw32\lib", r"C:\mingw64\x86_64-w64-mingw32"],
            include_dirs=[".", r"C:\mingw64\x86_64-w64-mingw32\include", r"C:\mingw64\x86_64-w64-mingw32"],
            extra_link_args="-static-libgcc -static-libstdc++ -Wl,-Bstatic,--whole-archive -lwinpthread -Wl,--no-whole-archive".split()
            #extra_compile_args=['-Wno-unused-variable', '-Wno-discarded-qualifiers']
        ),
        Extension(
            "figure",
            ["figure.pyx", "eelText.c"],
            libraries=['SOIL', 'opengl32', 'freetype', 'eelText'],
            library_dirs=[".", "/usr/include/freetype2", r"C:\mingw64\x86_64-w64-mingw32\lib", r"C:\mingw64\x86_64-w64-mingw32"],
            include_dirs=[".", "/usr/include/freetype2", r"C:\mingw64\x86_64-w64-mingw32\include", r"C:\mingw64\x86_64-w64-mingw32"],
            extra_link_args="-static-libgcc -static-libstdc++ -Wl,-Bstatic,--whole-archive -lwinpthread -Wl,--no-whole-archive".split()
            #extra_compile_args=['-Wno-unused-variable']
        ),
        Extension(
            "shader",
            ["shader.pyx", "eelShader.c"],
            libraries=['opengl32', 'GLEW32', 'eelShader'],
            library_dirs=[".", r"C:\mingw64\x86_64-w64-mingw32\lib", r"C:\mingw64\x86_64-w64-mingw32"],
            include_dirs=[".", r"C:\mingw64\x86_64-w64-mingw32\include", r"C:\mingw64\x86_64-w64-mingw32"],
            extra_link_args="-static-libgcc -static-libstdc++ -Wl,-Bstatic,--whole-archive -lwinpthread -Wl,--no-whole-archive".split()
            #extra_compile_args=['-Wno-unused-variable', '-Wno-discarded-qualifiers']
        )
    ])
)