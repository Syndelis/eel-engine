from .figure import _BaseFigure
from .figure import *
from dataclasses import dataclass, InitVar, field
from math import pi, cos, sin

@dataclass
class BaseFigure(_BaseFigure):

    x: int
    y: int

    def __post_init__(self, fill=False):
        if fill: self.setMode(9)
        

@dataclass
class Rectangle(BaseFigure):
    
    width: int
    height: int

    fill: InitVar[bool]=False

    def layout(self):

        return [
            (0, 0), (self.width, 0),
            (self.width, self.height), (0, self.height)
        ]


    def isInside(self, x, y):
        return (
            x >= self.x and x < self.x+self.width and\
            y >= self.y and y < self.y+self.height
        )


    def collisionDistance(self):
        return max(self.width, self.height) * 1.2

    
    def collisionCenter(self):
        return (self.x+self.width/2, self.y+self.height/2)


@dataclass
class Triangle(BaseFigure, NoPhysics):

    radius: int
    angle: float=0

    fill: InitVar[bool]=False

    @property
    def angle(self) -> float:
        return self.__angle

    @angle.setter
    def angle(self, value: float):
        
        self.__angle = value

        a = value + pi * 2/3
        b = value + pi * 4/3
        c = value + pi * 2

        self.__sina = sin(a)
        self.__cosa = cos(a)

        self.__sinb = sin(b)
        self.__cosb = cos(b)

        self.__sinc = sin(c)
        self.__cosc = cos(c)


    def layout(self):
        
        return [
            (self.__cosa * self.radius, self.__sina * self.radius),
            (self.__cosb * self.radius, self.__sinb * self.radius),
            (self.__cosc * self.radius, self.__sinc * self.radius),
        ]


@dataclass
class Circle(BaseFigure):

    radius: int
    precision: int=1
    fill: InitVar[bool]=False

    def layout(self):

        used = round(self.radius * 20 * self.precision)
        tmp = pi * 2 / used

        return [
            (cos(a:=(tmp * i)) * self.radius, sin(a) * self.radius)
            for i in range(used)
        ]


    def isInside(self, x, y):
        return (
            ((self.x - x) ** 2 + (self.y - y) ** 2 <= self.radius ** 2)
        )


    def collisionDistance(self):
        return self.radius


    def collisionCenter(self):
        return (self.x, self.y)


@dataclass
class Sprite(Rectangle):

    img: InitVar[str] = None

    def __post_init__(self, fill, img):

        if img is None: raise ValueError("The `img` parameter cannot be null")

        self.setMode(7)
        self.setTexture(bytes(img, "utf-8"))


    def layout(self):

        w = self.width  / 2
        h = self.height / 2

        return [(w, -h), (w, h), (-w, h), (-w, -h)]


@dataclass
class Line(BaseFigure, NoPhysics):

    xp: int
    yp: int

    def layout(self):
        return [(0, 0), (self.xp - self.x, self.yp - self.y)]