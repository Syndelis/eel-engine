# ------------------------------------------------------------------------------
# IMPORTS
# ------------------------------------------------------------------------------

from .gui import *
from dataclasses import dataclass

# ------------------------------------------------------------------------------
# CLASS WRAPPERS
# ------------------------------------------------------------------------------

@dataclass
class _Window:
    name: str
    open: bool = True

    def __enter__(self):
        self.open = Begin(self.name, self.open)
        return self

    def __exit__(self, *args, **kwargs):
        End()


global __global_window
__global_window = _Window("")

def Window(name: str, open: bool=True):
    global __global_window
    __global_window.name = name
    __global_window.open = open

    return __global_window


# ----------------------------------------------------------

# @dataclass
# class _Combobox:
#     name: str
#     selected: str