# Cython compiler

from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

setup(
    name='Eel Engine',
    ext_modules=cythonize([
        Extension(
            "eel",
            ["eel.pyx", "eelShader.c"],
            libraries=['GL', 'glfw', 'SOIL', 'eelCallbacks', 'GLEW', 'eelShader'],
            library_dirs=["."],
            include_dirs=["."],
            extra_compile_args=['-Wno-unused-variable']
        ),
        Extension(
            "figure",
            ["figure.pyx", "eelText.c"],
            libraries=['GL', 'SOIL', 'freetype', 'eelText'],
            library_dirs=[".", "/usr/include/freetype2"],
            include_dirs=[".", "/usr/include/freetype2"],
            extra_compile_args=['-Wno-unused-variable']
        )
    ])
)