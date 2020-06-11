all: libeelText.a libeelCallbacks.a eelEngine

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

test: test.c
	gcc test.c -o test -lGL -lglfw -lm

# eelCallbacks: eelCallbacks.h eelCallbacks.c
# 	gcc -g -c eelCallbacks.c -lglfw -fPIC

# eelData: eelData.pyx setupData.py
# 	python3 setupData.py build --build-lib .

# pxd:
	# autopxd /usr/include/GLFW/glfw3.h glfw3.pxd -I /usr/include
	# Misses some stuff ^
	#autopxd /usr/include/GL/gl.h gl.pxd -I /usr/include

clean:
	rm *.o *.a *.so
	rm eel.c figure.c
