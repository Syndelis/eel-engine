from math import sin, cos, pi
from time import time
from sys import path

# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.
ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eel import Eel
        from figure import BaseFigure, Circle
        break

    except ModuleNotFoundError:
        path.insert(0, '..')


class Gear(BaseFigure):

    def __init__(self, x, y, *, inner_radius, outer_radius,
                dents=6, angle=0,precision=1):

        self.x, self.y = x, y
        self.inner_radius = inner_radius
        self.outer_radius = outer_radius
        self.dents = dents
        self.angle = angle * pi / 180

        self.used = round((inner_radius + outer_radius)/2 * 20 * precision)
        self.dent_ratio = self.used // self.dents

    
    def layout(self):

        l = []
        for i in range(self.used):

            a = pi * 2 / self.used * i + self.angle
            if (i % self.dent_ratio < self.dent_ratio / 2):
                r = self.inner_radius

            else: r = self.outer_radius

            l.append((cos(a)*r, sin(a)*r))

        return l


e = Eel()

global g
g = Gear.new(300, 200, inner_radius=40, outer_radius=55)

@e.draw
def render(eel):
    global g

    g.angle += 0.01
    g(eel)
    Circle.new(300, 200, radius=20)(eel)

e.run()