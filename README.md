### Eel Engine
A graphics engine written in C, Python and Cython. With it, you can write games in Python, but with the speed and efficiency of C.

#### Compiling
In order to compile it, you'll need to meet a few requirements:
- Python 3.7+
- python3-dev
- cython
- Any package that includes OpenGL
- GLFW3 >= 3.3-1
- [SOIL](http://www.lonesock.net/soil.html) >= 1.07

#### Usage
To get started, you'll need to import the Eel class from the `eel` module and instantiate it.
```python
>>> from eel import Eel
>>> e = Eel() # Initializes a new window (doesn't open it yet)
```
With that done, you'll have a new window container ready to be open and drawn to. The next step is to actually draw something in it. In order to do that, we'll import a basic shape from the `figure` module and use it on the `draw()` method of our instantiated window.
```python
>>> from figure import Rectangle
>>> @e.draw
>>> def drawCoolRectangle(eel):
>>>     r = Rectangle.new(300, 200, width=50, height=100) # Creates a new rectangle object at (x, y) = (300, 200)
>>>     r(eel) # Renders the rectangle to the `Eel` instance received from that function (in this case, our variable `e`)
```
That function will be executed every time the `draw()` method of our window is called. Now all that's left is to finally open our window and draw that rectangle to it.
```python
>>> e.run()
```
You should now see the white outline of a rectangle in a 640x360 window. That's a pretty basic example, but you can check out more on the [/examples/](examples) directory. I recommend checking out [snake.py](examples/snake.py) if you want to learn some basic stuff quickly.
