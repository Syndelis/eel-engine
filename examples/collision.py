from sys import path
# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.
ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eel import Eel
        from figure import Circle, Text, Line, Rectangle
        break

    except ModuleNotFoundError:
        path.insert(0, '..')

window = Eel()

c = Rectangle(0, 0, width=40, height=40)
w, h = window.dimensions
d = Circle(w/2, h/2, radius=60, fill=True)
d.setColor(80, 170, 80, 255)

t = Text(20, 20, text=b'False', font=b'Ubuntu-R.ttf')

xp, yp = d.collisionCenter()
l = Line(c.x, c.y, xp=xp, yp=yp)
r = Rectangle(c.x, c.y, width=c.x-xp, height=c.y-yp)

@window.draw
def main(eel):

    c.x, c.y = eel.mouse
    r.x, r.y = l.x, l.y = c.collisionCenter()

    dx, dy = d.collisionCenter()

    r.width = dx-r.x
    r.height= dy-r.y

    dist = ((c.x-d.x)**2 + (c.y-d.y)**2)**(0.5)
    # print(f'{dist} > {c.minDistance()} + {d.minDistance()}')

    # t.setText(bytes(f'{c.collidesWith(d)}', 'utf8'))
    # t.setText(b'%d' % c.collidesWith(d))
    s = b'%d' % eel.fps
    t.setText(s)

    if c.collidesWith(d):
        c.setColor(170, 80, 80, 255)

    else: c.setColor(255, 255, 255, 255)

    d.drawTo(eel)
    c.drawTo(eel)
    l.drawTo(eel)
    r.drawTo(eel)
    t.drawTo(eel)

window.run()