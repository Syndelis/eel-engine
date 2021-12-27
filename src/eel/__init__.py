import os.path
from sys import path

# Insert relative path so `.eel` finds `.gui` (CImported via Cython)
path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from .eel import *
from . import figure, shader, gui