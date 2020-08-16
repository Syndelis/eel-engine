## All
Here I will be listing the changes I've found out are necessary to have it compile on Windows and how to compile the libraries required by the engine.

Download the [Eel repository](https://github.com/syndelis/eel-engine)

### Compiling libraries
Before installing any, make sure to have installed [MinGW-w64](https://sourceforge.net/projects/mingw-w64/files/mingw-w64/) (Don't try the Online installer, it doesn't work) and [Cmake](https://github.com/Kitware/CMake/releases/download/v3.18.1/cmake-3.18.1-win64-x64.msi). Don't forget to include all of the installed binaries in the PATH (`C:\mingw64\bin`, `C:\mingw64\x86_64-w64-mingw32\bin`).

---
#### GLFW3
Download [GLFW 3.32 WIN64](https://github.com/glfw/glfw/releases/download/3.3.2/glfw-3.3.2.bin.WIN64.zip) and extract.

Drag `glfw-3.3.2.bin.WIN64/include/GLFW` to `C:\mingw64\x86_64-w64-mingw32\include` and drag the contents of `glfw-3.3.2.bin.WIN64/lib-mingw-w64` to `C:\mingw64\x86_64-w64-mingw32\lib`

After dragging the files, make sure to rename `libglfw3dll.a` to `libglfw3.dll.a`

---
#### GLEW
Download [GLEW 2.1.0](https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0.zip/download), extract and use the following commands:
```sh
cmake -G "MinGW Makefiles" -S . -B . -DCMAKE_INSTALL_PREFIX=C:\mingw64\x86_64-w64-mingw32

mingw32-make all

mingw32-make install
```
Check to see where the `glew32.dll` file was saved to. If it was `C:\mingw64\x86_64-w64-mingw32\bin`, drag it to `C:\mingw64\x86_64-w64-mingw32\lib`

---
#### SOIL
Download [SOIL](http://web.archive.org/web/20200104042737/http://www.lonesock.net/files/soil.zip), extract and use the following commands:
```sh
cmake -G "MinGW Makefiles" -S . -B . -DCMAKE_INSTALL_PREFIX=C:\mingw64\x86_64-w64-mingw32

mingw32-make all
```

Now drag `SOIL/src/SOIL.h` to `C:\mingw64\x86_64-w64-mingw32\include\SOIL` and `libSOIL.a` to `C:\mingw64\x86_64-w64-mingw32\lib\`

---
#### FreeType 2
Download [FreeType](https://github.com/ubawurinna/freetype-windows-binaries).

For the lib drag `freetype/win64/freetype.dll` to `C:\mingw64\x86_64-w64-mingw32\lib\`

Now for the include, drag `freetype/include/freetype` to `C:\mingw64\x86_64-w64-mingw32\include\freetype2` and drag `freetype/include/ft2build.h` to `C:\mingw64\x86_64-w64-mingw32\include`

---
### Python Installation
In order to compile it, you'll also need to tweak some core Python files so that it supports Mingw64. By default, Python only supports Mingw32.

You'll have to apply the following patches:
* [mingw64.diff](mingw64.diff), originally available [here](https://bugs.python.org/file21477/mingw64.diff).
* [patch.diff](patch.diff), originally available [here](https://bugs.python.org/file40608/patch.diff).

Keep in mind to "localize" some paths. For example `C:\Python27\` -> `C:\Users\YOUR-WINDOWS-USER\AppData\Local\Programs\Python\Python38\`

Also, for [patch.diff](patch.diff), any errors that originate from `ValueError: Unknown MS Compiler version XXXX` can be fixed by adding

```python
elif msc_ver == 'XXXX':
    return ['vcruntime140']
```

---
### File changes
#### `eelText.h`
Add
```c
#ifndef GL_CLAMP_TO_EDGE
#define GL_CLAMP_TO_EDGE 0x812F
#endif
```
Anywhere in the file

#### `Makefile`
* Change all occurances of `rm` to `del`
* Remove all commented lines (lines that begin with `#`)
* Rename `python3` to `python`
* Rename all instances of `-lGL` to `-lopengl32`
* Rename all instances of `-lGLEW` to `-lGLEW32`
* Rename all instances of `-lglfw` to `-lglfw3`
* In `eelEngine`, add `--compiler=mingw64` at the end of the `python3` command

#### `setup.py`
Substitute the previous folder's [setup.py](../setup.py) with this folder's [setup.py](setup.py)

#### `eel.pyx`
Remove the `from libc.time cimport time` line.
Change all occurances of `CLOCK_MONOTONIC_RAW` to `CLOCK_MONOTONIC`

---
### Distributing
After the compilation, you will need to keep the following DLLs: `freetype.dll`, `glew32.dll`, `glfw3.dll` close to the `.pyd`'s.

This means that, in order to have the engine working wherever, you'll always have 6 files in the directory:
* `shader.cpXX-win_amd64.pyd`
* `figure.cpXX-win_amd64.pyd`
* `eel.cpXX-win_amd64.pyd`
* `freetype.dll`
* `glew32.dll`
* `glfw3.dll`

---
I might have missed some details in the process that will be filled as I'm forced to compile new versions of the engine.

This process, though aimed towards the Eel Engine, is a valuable resource I gathered from multiple different sources to get it compiled and should aid anyone trying to compile Cython code with Mingw-w64.