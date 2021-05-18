## All
Here I will be listing the changes I've found out are necessary to have it compile on Windows and how to compile the libraries required by the engine.

Download the [Eel repository](https://github.com/syndelis/eel-engine)

### Compiling libraries
Before installing any, make sure to have installed [MinGW-w64](https://sourceforge.net/projects/mingw-w64/files/mingw-w64/) (Don't try the Online installer, it doesn't work). Personally I've downloaded the Win32-SEH version, but maybe Win32-SJLJ could fix any problems you might encounter.

You'll also need [Cmake](https://github.com/Kitware/CMake/releases/download/v3.18.1/cmake-3.18.1-win64-x64.msi). When asked if you want to include it in PATH, choose yes.

Don't forget to include all of the installed binaries in the PATH (`C:\mingw64\bin`, `C:\mingw64\x86_64-w64-mingw32\bin`) as well as `INCLUDE` and `LIB`.

---
#### GLFW3
Download [GLFW 3.32 WIN64](https://github.com/glfw/glfw/releases/download/3.3.2/glfw-3.3.2.bin.WIN64.zip) and extract.

Copy the `glfw-3.3.2.bin.WIN64/include/GLFW` folder to `INCLUDE` and copy the contents of `glfw-3.3.2.bin.WIN64/lib-mingw-w64` to `LIB`

After it, make sure to rename `libglfw3dll.a` to `libglfw3.dll.a`

That's how your file directory should look:

```
C:\mingw64\ AND
C:\mingw64\x86_64-w64-mingw32\
├── include\
┊   └── GLFW\
┊       ├── glfw3.h
┊       └── glfw3native.h
└── lib\
    ├── glfw3.dll
    ├── libglfw3.a
    └── libglfw3.dll.a
```

---
#### GLEW
Download [GLEW 2.1.0](https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0.zip/download), extract and use the following commands:
```sh
cd build/cmake

cmake -G "MinGW Makefiles" -S . -B . -DCMAKE_INSTALL_PREFIX=C:\mingw64\x86_64-w64-mingw32

mingw32-make all
mingw32-make install
```
Check to see where the `glew32.dll` file was saved to. If it was `C:\mingw64\x86_64-w64-mingw32\bin`, drag it to `LIB`

That's how your file directory should look:

```
C:\mingw64\ AND
C:\mingw64\x86_64-w64-mingw32\
├── include\
┊   └── GL\
┊       └── glew.h
└── lib\
    └── glew32.dll
```

---
#### SOIL
Download [SOIL](http://web.archive.org/web/20200104042737/http://www.lonesock.net/files/soil.zip), extract and use the following commands:
```sh
cd projects/makefile
mkdir obj

mingw32-make all
```

Now make a `SOIL` folder in `INCLUDE` and copy `SOIL/src/SOIL.h` there. Also copy `libSOIL.a` to `LIB`

That's how your file directory should look:

```
C:\mingw64\ AND
C:\mingw64\x86_64-w64-mingw32\
├── include\
┊   └── SOIL\
┊       └── SOIL.h
└── lib\
    └── libSOIL.a
```

---
#### FreeType 2
Download [FreeType](https://github.com/ubawurinna/freetype-windows-binaries) and extract it.

For the lib drag `freetype/win64/freetype.dll` to `LIB`

Now for the include, you'll want to create a new folder called `freetype2` in `INCLUDE` and copy the whole `freetype/include/freetype` folder to it. You'll also want to copy that folder and paste it directly at `INCLUDE`, as well as the file `freetype/include/ft2build.h`.

That was a lot. Now that's how your file directory should look:

```
C:\mingw64\ AND
C:\mingw64\x86_64-w64-mingw32\
├── include\
┊   ├── freetype2\
┊   ┊   ├── \freetype\
┊   ├── \freetype\
┊   └── ft2build.h
└── lib\
    └── freetype.dll
```

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