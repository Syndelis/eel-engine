from sys import path

# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.
ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eel import Eel
        from figure import Text, Rectangle, Sprite
        break

    except ModuleNotFoundError:
        path.insert(0, '..')

e = Eel()

t = Text(10, 200, text=b"The quick brown fox jumps over the lazy dog", font=b"Ubuntu-R.ttf")
# t.font(b"Ubuntu-R.ttf", 24)

@e.draw
def txt(eel):
    Rectangle.new(100, 200, width=50, height=50)(eel)
    t(eel)

    Sprite.new(200, 200, width=70, height=70, img="turtle.jpg")(eel)

e.run()