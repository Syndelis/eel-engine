from sys import path
from threading import Thread

# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.
ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eel import Eel
        from figure import Rectangle
        break

    except ModuleNotFoundError:
        path.insert(0, '..')

# In this example, both windows will execute the same code

e, a = Eel(), Eel()

@e.draw
@a.draw
def niceRectangle(eel):

    Rectangle.new(300, 200, width=50, height=100)(eel)

ar = Thread(target=a.run)
ar.start()
e.run()