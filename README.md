### Eel Engine
A graphics engine written in C, Python and Cython. With it, you can write games in Python, but with the speed and efficiency of C.

#### Compiling
In order to compile it, you'll need to meet a few requirements:
- [Python](https://python.org) 3.7+ (on Linux: python3)
- Your Python's version equivalent development libraries (on Linux: python3-dev)
- [cython](https://cython.org/) (pip3 install cython)
- Any [package](https://www.mesa3d.org/) that includes [OpenGL](https://www.opengl.org/) (Depends on your graphics driver)
- [GLFW3](https://www.glfw.org/) >= 3.3-1 (on Linux: libglfw3 libglfw3-dev)
- [SOIL](http://www.lonesock.net/soil.html) >= 1.07 (on Linux: libsoil1 libsoil-dev)
- [FreeType2](https://www.freetype.org/) (on Linux: libfreetype6 libfreetype6-dev)

#### Usage
To get started, you'll need to import the Eel class from the `eel` module and instantiate it.
```python
>>> from eel import Eel
>>> window = Eel() # Initializes a new window (doesn't open it yet)
```
With that done, you'll have a new window container ready to be open and drawn to. The next step is to actually draw something in it. In order to do that, we'll import a basic shape from the `figure` module and use it on the `draw()` method of our instantiated window.
```python
>>> from figure import Rectangle
>>> @window.draw
>>> def drawCoolRectangle(eel):
>>>     r = Rectangle(300, 200, width=50, height=100) # Creates a new rectangle object at (x, y) = (300, 200)
>>>     r.drawTo(eel) # Renders the rectangle to the `Eel` instance received from that function (in this case, our variable `e`)
```
That function will be executed every time the `draw()` method of our window is called. Now all that's left is to finally open our window and draw that rectangle to it.
```python
>>> window.run()
```
You should now see the white outline of a rectangle in a 640x360 window. That's a pretty basic example, but you can check out more on the [/examples/](examples) directory. I recommend checking out [snake.py](examples/snake/snake.py) if you want to learn some basic stuff quickly.
