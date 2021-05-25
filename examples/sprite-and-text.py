from sys import path

# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.
ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eelengine import Eel
        from eelengine.figure import Rectangle, Sprite, Font
        break

    except ModuleNotFoundError:
        path.insert(0, '..' * (i+1))

e = Eel()
r = Rectangle(100, 200, width=50, height=50, fill=True)

global s, f, t, my_text
s = f = t = None
my_text = "The quick brown fox jumps over the lazy dog"

@e.load
def load(eel):
    global s, f, t, my_text
    s = Sprite(200, 200, width=70, height=70, img="turtle.jpg")
    f = Font("Ubuntu-R.ttf")
    t = f.text(10, 200, bytes(my_text, "utf-8"))
    t.setColor(255, 0, 200)

@e.draw
def txt(eel):
    global s
    r.drawTo(eel)
    t.drawTo(eel)
    s.drawTo(eel)

e.run()
