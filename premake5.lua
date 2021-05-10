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

eelCLibraries = { "eelCallbacks", "eelText", "eelShader" }

for i, CLib in ipairs(eelCLibraries) do

	project (CLib)
		kind "StaticLib"
		files (CLib .. ".*")

		filter "system:windows"
			links { "glfw3", "m", "freetype", "opengl32", "GLEW32" }

		filter "system:linux"
			links { "glfw", "m", "freetype", "GL", "GLEW" }

		filter {}

		targetdir "."
		pic "On"

		optimize "On"
		includedirs "/usr/include/freetype2"

end

-- Actual Engine: Either a Shared library or an executable ---------------------

project "Engine"
	kind "Makefile"

	filter "system:windows"
		buildcommands { "python setup.py build_ext --inplace --compiler=mingw64 -DMS_WIN64" }
		cleanextensions ".pyd"

	filter "system:linux"
		buildcommands { "python3 setup.py build_ext --inplace" }
		cleanextensions ".so"

	filter {}

	buildmessage "Building the Engine"

--------------------------------------------------------------------------------
