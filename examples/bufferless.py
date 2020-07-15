from sys import path
# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.
ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eel import Eel
        from figure import *
        break

    except ModuleNotFoundError:
        path.insert(0, '..')


e = Eel()
r = Rectangle(30, 40, width=200, height=100)
r.setColor(0, 255, 0)

@e.draw
def test(eel):
    basicRec(30, 40, 200, 100, eel)
    # r(eel)


WIDTH, HEIGHT = 640, 480
SQ = 32
GAME_END = False
VSYNC = False
# Preloading lines
global lines
lines = []
for y in range(0, HEIGHT, SQ):
    l = Line(0, y, xp=WIDTH, yp=y)
    # l.setColor(50, 50, 50, 50)
    lines.append(l)

for x in range(0, WIDTH, SQ):
    l = Line(x, 0, xp=x, yp=HEIGHT)
    # l.setColor(50, 50, 50, 50)
    lines.append(l)

@e.draw
def drawLines(eel):
    global lines
    for i in lines: i(eel)


e.run()