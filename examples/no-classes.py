# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.
ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eelengine import Eel
        from eelengine.figure import drawRect, drawTriangle
        break

    except ModuleNotFoundError:
        path.insert(0, '..')

e = Eel()

@e.draw
def d(eel):

    drawRect(10, 20, 100, 200, target=eel)
    drawRect(50, 40, target=eel)

    t = drawTriangle(500, 40, 30, target=eel)
    t.angle += 2

    drawTriangle(300, target=eel)

e.run()