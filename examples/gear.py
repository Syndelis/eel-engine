from math import sin, cos, pi
from time import time
from sys import path
from dataclasses import dataclass

# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.
ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eelengine import Eel
        import eelengine.figure as fig
        break

    except ModuleNotFoundError:
        path.insert(0, '..')


@dataclass
class Gear(fig.BaseFigure):

    inner_radius: int
    outer_radius: int
    dents: int=6
    angle: int=0
    precision: int=1

    def __post_init__(self):
        self.used = round(
            (self.inner_radius + self.outer_radius) / 2 *\
            20 * self.precision
        )

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


e = Eel(vsync=False)

@e.draw
def render(eel):
    fps = eel.fps or 60

    x, y = eel.mouse


    g = fig.drawGear(x, y, 40, 55, target=eel)
    g.angle += 0.01 / fps * 60

    fig.drawCircle(x, y, 20, target=eel)

e.run()