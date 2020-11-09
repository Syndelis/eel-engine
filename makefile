all: libeelShader.a libeelText.a libeelCallbacks.a eelEngine

eelEngine: eel.pyx setup.py
	# python3 setup.py build --build-lib .
	python3 setup.py build_ext --inplace

libeelCallbacks.a: eelCallbacks.o
	ar rcs $@ $^

eelCallbacks.o: eelCallbacks.c eelCallbacks.h
	gcc -c $< -lglfw -lm

libeelText.a: eelText.o
	ar rcs $@ $^

eelText.o: eelText.c eelText.h
	gcc -c $< -lfreetype -I/usr/include/freetype2

libeelShader.a: eelShader.o
	ar rcs $@ $^

eelShader.o: eelShader.c eelShader.h
	gcc -c $< -lGL -lGLEW -Wno-discarded-qualifiers

# pxd:
	# autopxd /usr/include/GLFW/glfw3.h glfw3.pxd -I /usr/include
	# Misses some stuff ^
	#autopxd /usr/include/GL/gl.h gl.pxd -I /usr/include

install:
	mkdir ./LIBTEMP
	echo "from .eel import *\nfrom . import figure, shader, gui" > ./LIBTEMP/__init__.py
	cp *.so ./LIBTEMP
	mv ./LIBTEMP ~/.local/lib/python3.8/site-packages/eelengine
	rm -rf ./LIBTEMP

clean:
	rm *.o *.a *.so
	rm eel.c figure.c shader.c
