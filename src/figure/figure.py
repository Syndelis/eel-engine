from .figure import _BaseFigure
from .figure import *
from dataclasses import dataclass, InitVar

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