-- Whole EelEngine Workspace: Acts as an umbrella for everything ---------------
workspace "EelEngine"
	configurations { "Library", "Executable" }
	platforms { "Linux", "Win64" }

-- C Libraries that are used in Cython modules ---------------------------------

eelCLibraries = { "eelCallbacks", "eelText", "eelShader" }

for i, CLib in ipairs(eelCLibraries) do

	project (CLib)
		kind "StaticLib"
		files (CLib .. ".*")

		links { "glfw", "m", "freetype", "GL", "GLEW" }
		includedirs "/usr/include/freetype2"

		targetdir "."

		cleancommands "rm lib%{prj.name}.so"

		buildmessage "Compiling C Library %{prj.name}..."

end

-- Actual Engine: Either a Shared library or an executable ---------------------

project "Engine"
	kind "Makefile"

	buildcommands { "python3 setup.py build_ext --inplace" }
	cleancommands { "rm *.cpython-*.so" }

	buildmessage "Building the Engine"

--------------------------------------------------------------------------------
