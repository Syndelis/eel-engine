CC=gcc
SRC=eelCallbacks.c eelText.c eelShader.c
OBJ=$(SRC:.c=.o)
LIB=$(addprefix lib,$(OBJ:.o=.a))

all: $(LIB) eelEngine

eelEngine: eel.pyx setup.py
	# python3 setup.py build --build-lib .
	python3 setup.py build_ext --inplace

$(LIB): lib%.a: %.o
	ar rcs $@ $^

eelCallbacks.o: %.o: %.c
	$(CC) -c $< -lglfw -lm

eelText.o: %.o: %.c
	$(CC) -c $< -lfreetype -I/usr/include/freetype2

eelShader.o: %.o: %.c
	$(CC) -c $< -lGL -lGLEW -Wno-discarded-qualifiers

install: cleaninstall
	mkdir ./LIBTEMP
	echo "from .eel import *\nfrom . import figure, shader, gui" > ./LIBTEMP/__init__.py
	cp *.so ./LIBTEMP
	mv ./LIBTEMP ~/.local/lib/python3.8/site-packages/eelengine
	rm -rf ./LIBTEMP

cleaninstall:
	rm -rf ~/.local/lib/python3.8/site-packages/eelengine

clean:
	rm *.o *.a *.so
	rm eel.c figure.c shader.c gui.c

# pxd:
	# autopxd /usr/include/GLFW/glfw3.h glfw3.pxd -I /usr/include
	# Misses some stuff ^
	#autopxd /usr/include/GL/gl.h gl.pxd -I /usr/include
