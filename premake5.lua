-- ALL THIS HAS BEEN AUTOMATICALLY DONE BY SETUP.PY FOR AGES

-- Whole EelEngine Workspace: Acts as an umbrella for everything ---------------
workspace "EelEngine"

	configurations "Library"

	filter "system:linux"
		configurations "Executable"

	filter "system:windows"
		configuration "Library"

	filter {}
	objdir "!obj"

-- C Libraries that are used in Cython modules ---------------------------------

eelCLibraries = {
	eelCallbacks="src/eel/eelCallbacks",
	eelShader="src/shader/eelShader",
	eelImage="src/figure/eelImage"
}

for lib, libfiles in pairs(eelCLibraries) do

	project (lib)
		kind "StaticLib"
		files (libfiles .. ".*")

		filter "system:windows"
			links { "glfw3", "m", "freetype", "opengl32", "GLEW32" }

		filter "system:linux"
			links { "glfw", "m", "freetype", "GL", "GLEW", "SOIL" }

		filter {}

		targetdir "."
		pic "On"

		optimize "On"
		includedirs { "/usr/include/freetype2", "lib/stb" }

end

-- Actual Engine: Either a Shared library or an executable ---------------------

project "Engine"
	kind "Makefile"

	filter "system:windows"
		buildcommands {
			"mkdir -p eelengine",
			"python setup.py build_ext --inplace --compiler=mingw64 -DMS_WIN64",
			"cp src/eel/__init__.py eelengine/",
			"mkdir -p eelengine/figure && mv eelengine/figure*pyd eelengine/figure",
			"cp src/figure/__init__.py eelengine/figure/"
		}
		cleanextensions ".pyd"

	filter "system:linux"
		buildcommands {
			"mkdir -p eelengine",
			"python3 setup.py build_ext --inplace",
			"cp src/eel/__init__.py eelengine/",
			"mkdir -p eelengine/figure && mv eelengine/figure*so eelengine/figure",
			"cp src/figure/__init__.py eelengine/figure/"
		}
		cleancommands {
			"rm -rf build obj eelengine",
			"rm -f *.a *.make Makefile",
			"rm -f src/eel/eel.c src/figure/figure.c src/gui/gui.cpp src/shader/shader.c",
		}

	filter {}

	buildmessage "Building the Engine"

--------------------------------------------------------------------------------
