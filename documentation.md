# Eel Engine Documentation

This file should contain everything you need to know in order to make games or applications using the Eel Engine.

From basic to advanced, this document should list absolutely everything about the engine.

Note that this document refers to [Eel Engine Version 1.0, released in August 14th, 2020](https://github.com/Syndelis/eel-engine/tree/1.0). If this document is outdated, shame on me, really.

- [Eel Engine Documentation](#eel-engine-documentation)
  - [Getting Started](#getting-started)
    - [Installation](#installation)
    - [Understanding the modules](#understanding-the-modules)
    - [Your first program](#your-first-program)
  - [Advanced techniques](#advanced-techniques)
    - [The load decorator](#the-load-decorator)
    - [Resource Management](#resource-management)
  - [Module documentation](#module-documentation)
    - [Eel module](#eel-module)
      - [Functions](#functions)
      - [Classes](#classes)
        - [Methods](#methods)
        - [Attributes](#attributes)
          - [Read-only](#read-only)
          - [Writeables](#writeables)
        - [Methods](#methods-1)
        - [Attributes](#attributes-1)
          - [Read-only](#read-only-1)
          - [Writeables](#writeables-1)
    - [Figure module](#figure-module)
      - [Classes](#classes-1)
        - [Methods](#methods-2)
        - [Methods](#methods-3)
        - [Methods](#methods-4)
        - [Methods](#methods-5)
        - [Methods](#methods-6)
        - [Methods](#methods-7)
        - [Methods](#methods-8)
    - [Shader module](#shader-module)
      - [Classes](#classes-2)
        - [Methods](#methods-9)
<!-- [TOC] -->

---
## Getting Started

Beginners should expect to find materials from installation to writing their first programs here.

### Installation
* #### Windows Users
    Download the latest binaries [available here](https://github.com/Syndelis/eel-engine/releases) and extract them to whatever folder your project exists on.

* #### Linux Users
    Follow the compilation section on the [README](README.md#Compiling) file.

---
### Understanding the modules
Before launching your IDE, it's interesting to note that the engine is divided in 3 modules:

* #### `eel`
    Contains everything window-related, such as:
    * Opening/closing window
    * Keyboard/Mouse input
    * Canvases

* #### `figure`
    The figure sub-module contains everything drawing-related, such as:
    * Basic figure (Rectangle, Circle, Triangle)
    * Sprites for loading images
    * Text rendering

* #### `shader`
    The last sub-module, shader, is exclusively dedicated for the handling of [GLSL](https://pt.wikipedia.org/wiki/GLSL) shaders. Interface-wise, it introduces a single class.

With that out of the way, let's write a single program.

---
### Your first program
First, let's learn to open a window

```python
from eel import Eel

window = Eel(name="My neat app", width=640, height=480)
window.run() # This is a loop, it hands the control to the window

print("The window is now closed")
```

Now to draw something to the window
```python
from eel import Eel
from figure import Rectangle

window = Eel(name="My neat app")

# Note that the rectangle is created outside our `drawLoop` function
# This is because we don't want to create 60 rectangles each second
my_rect = Rectangle(20, 30, width=100, height=50, fill=True)

# This `at window.draw` is what's known as a decorator
# Long story short, any function preceeded by this decorator
# Will be executed by the engine whenever it redraws the screen
# About ~60 times each second
@window.draw
def drawLoop(eel):
    # This function's name is not really that important
    # The decorator is what makes this work
    my_rect.drawTo(eel)

window.run()

print("The window is now closed")
```

It's a simple example, but too static. Let's fix that
```python
from eel import Eel
from figure import Rectangle

window = Eel(name="My neat app")
my_rect = Rectangle(20, 30, width=100, height=50, fill=True)

@window.draw
def drawLoop(eel):

    # This will set the position of our rectangle
    # You can, alternatively, set X and Y individually with
    # my_rect.x, my_rect.y = eel.mouse
    my_rect.pos = eel.mouse
    my_rect.drawTo(eel)

window.run()

print("The window is now closed")
```

And finally let's add some interactivity
```python
from eel import Eel, mousePressed
from figure import Rectangle

window = Eel(name="My neat app")
my_rect = Rectangle(20, 30, width=100, height=50, fill=True)

@window.draw
def drawLoop(eel):

    if mousePressed(0):
        my_rect.setColor(200, 0, 0)

    else: my_rect.setColor(0, 200, 0)

    my_rect.pos = eel.mouse
    my_rect.drawTo(eel)

window.run()

print("The window is now closed")
```

And that covers the basic. If you understood the above, you should be able to understand the rest of the documentation and its examples. Good luck!

---

## Advanced techniques

In this section, you will learn how to use your system resources more efficiently and write better code for your game overall.

### The load decorator

In the previous section you were presented to the `draw` decorator, that looks like this

```python
@window.draw
def drawMyGame(eel):
    ...
```

The `draw` decorator will have the decorated functions run every frame and is a must for your game's logic and drawing. 

However, there are some times when you need to have functions be executed only once, and for that reason we have the `load` decorator.

```python
@window.load
def initializePlayer(eel):
    # This will be executed only once
    global player
    player = Knight()
```

You might think this is not that useful, but there's a good reason for its existance. Some assets like `figure.Font`, `figure.Sprite` and `shader.Shader` **need** to be initialized only after a window has been opened. If you are interested in the why, that's because they need an OpenGL context to exist, and that only happens after the window is open.

That makes the `load` decorator perfect for this kind of situation, since it will run only once and exactly after the window has ben opened.

We will see extensive usage of this feature in the next section.

---

### Resource Management

---

## Module documentation

### Eel module
The primary module

#### Functions

==`keyPressed(key: (bytes | str | int)) -> int`==
Returns `0` if said key is not being held or any other integer if it is.

Note that `bool(integer)` returns `False` for `0` and `True` for any other integer.

==Example==
```python
@window.draw
def gameLogic(eel):
    global player

    if keyPressed(b'W'): player.y -= 5
    if keyPressed(b'S'): player.y += 5
    if keyPressed(b'D'): player.x += 5
    if keyPressed(b'A'): player.x -= 5
```

---

==`mousePressed(button: int) -> int`==
Returns `0` if said mouse button is not being held or any other integer if it is.

==Example==
```python
@window.draw
def changeStage(eel):
    global menu, mouse_collision_box, current_stage

    for name, item, stage in menu:
        if mouse_collision_box.collidesWith(item):
            print(f"Selected {name}")

            if mousePressed(0):
                current_stage = stage
```

---

#### Classes

==`eel.Eel(eel.Paintable)`==

##### Methods

* `__init__(self, name="Eel Engine", width=640, height=480, vsync=True)`
    Class constructor.

* `draw(self, function)`
    Decorator for functions that should be called every frame.
    ```python
    @window.draw
    def myDrawFunc(eel): pass
    ```

* `load(self, function)`
    Decorator for functions that should only run once.
    ```python
    @window.load
    def setupFunc(eel): pass
    ```

* `run(self)`
    Opens and starts drawing in the window.

* `setClearColor(self, r: int, g: int, b: int, a=255)`

##### Attributes
###### Read-only
* `fps: float`

###### Writeables
* `width: int`
* `height: int`
* `dimensions: tuple[int, int]`
* `mouse: tuple[int, int]`

---

==`eel.Canvas(eel.Paintable)`==

##### Methods

* `__init__(self, width=640, height=480, x=0, y=0)`
    Class constructor.

* `clear(self)`
    Clears the canvas.

* `drawTo(self, target: eel.Paintable)`
    Renders the canvas to the target.

##### Attributes
###### Read-only
* `width: int`
* `height: int`
* `dimensions: tuple[int, int]`

###### Writeables
* `x: int`
* `y: int`
* `pos: tuple[int, int]`

---

### Figure module
Drawing module

#### Classes

==`figure.BaseFigure`==

##### Methods

* `__init__(self, x, y, **kwargs)`
    Class constructor.
    ```
    ```

* `setColor(self, r: int, g: int, b: int, a=255)`
    Set the figure's drawing color.
    ```
    ```
* `setMode(self, mode: int)`
    Set the figure's drawing mode. This is generally not used because most figures have the `fill` parameter in their constructor.

    The `mode` parameter should be a GL constant like `GL_LINES`, `GL_POLYGON`, etc.
    ```
    ```
* `setTexture(self, img_file: str)`
    Opens and loads an image file as the figure's texture.
    ```
    ```
* `setByteTexture(self, texture: int)`
    Sets the OpenGL texture object of the figure. This is highly useful when having multiple objects have the same texture because this avoids the need to keep reopening the source file.

    More support for this type of memory management is coming to a later version of Eel.
    ```
    ```
* `setPointSize(self, ps: float)`
* `drawTo(self, target: eel.Paintable)`
    Renders the figure to the specified `target`.
    ```
    ```
* `collidesWith(self, other: figure.BaseFigure) -> bool`
    Checks wether the current instance collides with another figure. This method utilizes of other methods like `collisionDistance()` and `collisionCenter()`. Some figures like the Triangle don't have this method implemented yet and so the abstract class `figure.NoPhysics` was created for figures that shouldn't be able to collide.

    In the current version, the Triangle does not inherit from `figure.NoPhysics`, but that will be fixed in the next version.

---

==`figure.Rectangle(figure.BaseFigure)`==

##### Methods

* `__init__(self, x, y, *, width, height, fill=False)`
    Class constructor.
    ```
    ```
* `layout(self) -> list[tuple]`
    Returns the list of vertices of how the figure should look like.
    ```
    ```
* `isInside(self, x, y) -> bool`
    Returns wether said point is inside the shape.
    ```
    ```

* `collisionDistance(self) -> int`
    Returns the minimum distance another object has to be for a collision to be feasible.
    ```
    ```

* `collisionCenter(self) -> int`
    Returns the collision's anchor point.

---

==`figure.Triangle(figure.BaseFigure)`==

##### Methods
* `__init__(self, x, y, *, radius, angle=0.0, fill=False)`
    Class constructor.

* `layout(self) -> list[tuple]`

---

==`figure.Circle(figure.BaseFigure)`==

##### Methods

* `__init__(self, x, y, *, radius, precision=1, fill=False)`
    Class constructor.
    ```
    ```

* `layout(self) -> list[tuple]`
* `isInside(self, x, y) -> bool`
    Returns wether said point is inside the shape.
    ```
    ```

* `collisionDistance(self) -> int`
    Returns the minimum distance another object has to be for a collision to be feasible.
    ```
    ```

* `collisionCenter(self) -> int`
    Returns the collision's anchor point.
    ```
    ```

---

==`figure.Sprite(figure.Rectangle)`==

##### Methods
* `__init__(self, x, y, *, width, height, img: str)`
    Class constructor.
    ```
    ```

* `layout(self) -> list[tuple]`

---

==`figure.Line(figure.Rectangle, figure.NoPhysics)`==

##### Methods
* `__init__(self, x, y, *, xp, yp)`
    Class constructor.
    ```
    ```

* `layout(self) -> list[tuple]`


---

==`figure.Text(figure._BaseText, figure.BaseFigure)`==

##### Methods
* `__init__(self, x, y, text: bytes, font: bytes, size=32)`
    Class constructor.
    ```
    ```

* `setText(self, text: bytes)`
    Sets the text to be drawn in the next drawing call.
    ```
    ```

* `setFont(self, fontname: bytes, size=32)`
    Sets a new font for the text object.
    ```
    ```

* `drawTo(self, target: eel.Paintable)`
    Renders the text to the specified target.

---

### Shader module
Shading module

#### Classes

==`shader.Shader`==

##### Methods

* `__init__(self, vertstr: str, fragstr: str)`
    Class constructor.
    ```
    ```

* `use(self)`
    Enables shader. Automatically used when using the `with` statement.
    ```
    ```

* `stop(self)`
    Disables shader. Automatically used when using the `with` statement.
    ```
    ```

* `getProgram(self) -> int`
* `setUniform(self, name: str, values: Iterable)`
    Sets the shader uniform named `name`. The `values` parameter should be a collection of the values you want to pass to the uniform.
    Note that even uniforms of one value should still be passed as an Iterable.