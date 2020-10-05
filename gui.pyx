"""
Imports
"""

# Libc
from libc.stdio cimport printf
from libc.stdlib cimport malloc, free, rand, srand
from libc.time cimport time
from libc.math cimport pi, cos, sin, pow, sqrt
from libc.string cimport strlen, strcpy

# Graphics (GL & SOIL)
from glew cimport glewInit
from gl cimport *
from glfw3 cimport *
# from SOIL cimport *

# Eel integration
from eel cimport Paintable, Eel, mousePressed, mouseGetTimeHeld
from eel import Cursor
from figure import Font, Text
# ------------------------------------------------------------------------------
"""
Data structures
"""
from eelData cimport *
ctypedef _Point Point
ctypedef _Polygon Polygon
ctypedef _Color Color
# ------------------------------------------------------------------------------
"""
Functions
"""
# ------------------------------------------------------------------------------
"""
Classes
"""

cdef float ux[128]
cdef float uy[128]

cdef class Widget:

    # Disabled-ground Background, Foreground, Selected-ground
    cdef Polygon poly
    cdef Color dg, bg, fg, sg
    cdef public byte highlight, disabled
    cdef public int x, y, width, height

    def __cinit__(self, *args, **kwargs):
        self.sg = [  0, 173, 239, 255] # Windows 10 blue
        self.fg = [255, 255, 255, 255]
        self.bg = [  0,   0,   0, 255]
        self.dg = [ 40,  40,  40, 255]

        self.poly.texture = 0
        self.poly.program = 0
        self.poly.point_size = 3.0
        self.poly.used = 4

        self.highlight = 0
        self.disabled = 0


    cpdef setFg(self, byte r, byte g, byte b, byte a=255):
        self.fg.r = r
        self.fg.g = g
        self.fg.b = b
        self.fg.a = a


    cpdef setBg(self, byte r, byte g, byte b, byte a=255):
        self.bg.r = r
        self.bg.g = g
        self.bg.b = b
        self.bg.a = a


    cpdef setDg(self, byte r, byte g, byte b, byte a=255):
        self.dg.r = r
        self.dg.g = g
        self.dg.b = b
        self.dg.a = a


    cpdef setSg(self, byte r, byte g, byte b, byte a=255):
        self.sg.r = r
        self.sg.g = g
        self.sg.b = b
        self.sg.a = a


    cdef Color drawColor(self):
        if self.disabled:
            return self.dg

        elif self.highlight:
            return self.sg

        else: return self.fg


    cpdef isEnabled(self):
        return not self.disabled


    cpdef enable(self):
        self.disabled = 0


    cpdef disable(self):
        self.disabled = 1


    # cpdef drawTo(self, Paintable target): pass
    # cpdef sendMouseInput(self, x, y, m1, m2): pass
    # cpdef sendKeyInput(self, text, enter, tab, backspace): pass

DEF TEXTSHIFT = 5

cdef class Window(Widget):

    cdef public list widgets

    cdef int anchor_x, anchor_y, mouse_was_pressed
    cdef int headerheight

    cdef public object title
    cdef public object draggable, resizable, minimized

    def __cinit__(self, title: Text=None, int x=0, int y=0,
                    int width=200, int height=100):

        self.width, self.height = width, height
        self.headerheight = 20

        self.x, self.y = x, y
        self.anchor_x, self.anchor_y = -1, -1
        self.mouse_was_pressed = 0

        self.widgets = []

        self.title = title
        if self.title:
            self.headerheight = self.title.height + TEXTSHIFT
            self.title.x = self.x + TEXTSHIFT
            self.title.y = self.y + self.title.bearing + TEXTSHIFT/2

            self.width = max(width, self.title.width + TEXTSHIFT*2)
            self.height = max(height, self.headerheight + TEXTSHIFT)

        self.draggable = True
        self.resizable = True
        self.minimized = False


    cpdef drawTo(self, Paintable target):

        cdef float width, height
        width, height = target.width * 1.0, target.height * 1.0

        self.poly.x = ux
        self.poly.y = uy
        self.poly.mode = GL_POLYGON
        self.poly.color = self.drawColor()

        if not self.minimized:
            # Clear Window
            # ------------------------------------------------------------------
            ux[0], uy[0] = (             self.x)*1.0 / height, (self.y              )*1.0 / height
            ux[1], uy[1] = (             self.x)*1.0 / height, (self.y + self.height)*1.0 / height
            ux[2], uy[2] = (self.width + self.x)*1.0 / height, (self.y + self.height)*1.0 / height
            ux[3], uy[3] = (self.width + self.x)*1.0 / height, (self.y              )*1.0 / height

            self.poly.color = self.bg

            target.render(&self.poly)

            # Draw Window borders
            # ------------------------------------------------------------------

            self.poly.mode = GL_LINE_LOOP
            self.poly.color = self.drawColor()

            target.render(&self.poly)

            # Draw Widgets
            for wid in self.widgets:
                wid.drawTo(target)


        # Draw Window header
        # ----------------------------------------------------------------------
        ux[0], uy[0] = (             self.x)*1.0 / height, (self.y                    )*1.0 / height
        ux[1], uy[1] = (             self.x)*1.0 / height, (self.y + self.headerheight)*1.0 / height
        ux[2], uy[2] = (self.width + self.x)*1.0 / height, (self.y + self.headerheight)*1.0 / height
        ux[3], uy[3] = (self.width + self.x)*1.0 / height, (self.y                    )*1.0 / height

        self.poly.mode = GL_POLYGON

        target.render(&self.poly)

        if self.title: self.title.drawTo(target)


    cpdef addWidget(self, Widget widget):
        
        widget.parent = self
        self.widgets.append(widget)

        cdef int start_area = TEXTSHIFT + self.headerheight
        cdef int usable_area = self.height - self.headerheight - TEXTSHIFT
        cdef int div = usable_area // len(self.widgets)

        if div <= widget.height + TEXTSHIFT:
            self.height = round(len(self.widgets) * (widget.height+TEXTSHIFT) * 1.2)
            usable_area = self.height - self.headerheight - TEXTSHIFT
            div = usable_area // len(self.widgets)

        self.width = max(self.width, widget.width)
        widget.width = self.width

        for i, wid in enumerate(self.widgets):
            wid.y = round(start_area + i*div)


    cpdef event(self, Eel target):
        self.sendMouseInput(
            *target.mouse, mousePressed(0), mousePressed(1),
            window=target
        )

        self.drawTo(target)


    cpdef sendMouseInput(self, int x, int y, int m1, int m2,
                        int maxx=0, int maxy=0, Eel window=None):

        cursor = None

        if window:
            maxx, maxy = window.dimensions
            cursor = window.cursor

        cdef int _y = y - self.y

        xcond = x >= self.x and x <= self.x + self.width
        ycond = y >= self.y and y <= self.y + self.headerheight
        highlit = None
        cdef double mouse_held = mouseGetTimeHeld()

        if not self.minimized:
            for wid in self.widgets:

                wid.highlight = xcond and _y >= wid.y and _y <= wid.y + wid.height

                if wid.highlight and window:
                    window.cursor = Cursor.HAND
                    highlit = wid

                    if m1 and self.anchor_x == -1:
                        wid.click()

        if xcond:
            if ycond:
                window.cursor = Cursor.HAND

                self.minimized ^= (
                    m2 and not self.mouse_was_pressed
                )


            elif highlit is None:
                window.cursor = Cursor.ARROW

        # Mouse hover over header
        if (x >= self.x and x <= self.x + self.width and\
            y >= self.y and y <= self.y + self.headerheight) or\
            self.anchor_x >= 0:

            if m1 and self.draggable:
                if self.anchor_x < 0:
                    self.anchor_x, self.anchor_y = x, y

                else:
                    self.x += x - self.anchor_x
                    self.y += y - self.anchor_y

                    if maxx:
                        self.x = max(5, min(maxx - self.width - 5, self.x))

                    if maxy:
                        self.y = max(5, min(maxy - self.height - 5, self.y))

                    if self.title:
                        self.title.x = self.x + TEXTSHIFT
                        self.title.y = self.y + self.title.bearing + TEXTSHIFT/2
                        

                    self.anchor_x = x
                    self.anchor_y = y

            else:
                self.anchor_x = -1

        self.highlight = xcond and y >= self.y and y <= self.y + self.height
        self.mouse_was_pressed = m2


    cpdef sendKeyInput(self, text, enter=False, tab=False, backspace=False):
        pass


    cpdef move(self, x, y):
        self.x, self.y = x, y
        self.title.x = x + TEXTSHIFT
        self.title.y = y + self.title.bearing + TEXTSHIFT / 2


    cpdef getHeaderHeight(self):
        return self.headerheight


cdef class Button(Widget):

    cdef public Window parent
    cdef public object label, hovered, clicked, value

    def __cinit__(self, label: Text=None, Window parent=None, value=None):

        self.x, self.y = 0, 0
        self.width, self.height = 0, 0
        
        self.label = label
        if self.label:
            self.width = max(self.width, (self.label.width + TEXTSHIFT*2)*1.2)
            self.height = max(self.height, (self.label.height + TEXTSHIFT)*1.2)

        self.parent = parent
        if self.parent:
            self.parent.addWidget(self)

        self.hovered, self.clicked = None, None
        self.value = value


    cpdef onHover(self, func):
        self.hovered = func


    cpdef onClick(self, func):
        self.clicked = func


    cpdef click(self, button=0):
        if self.clicked: self.clicked(button)


    cpdef hover(self):

        self.highlight = True
        if self.hovered: self.hovered()


    cpdef drawTo(self, Paintable target):

        cdef int x, y
        x, y = (self.x + self.parent.x), self.y + self.parent.y

        cdef float width, height
        width, height = target.width * 1.0, target.height * 1.0

        # Draw box
        # ----------------------------------------------------------------------
        ux[0], uy[0] = (x + TEXTSHIFT             ) / height, (y              ) / height
        ux[1], uy[1] = (x + self.width - TEXTSHIFT) / height, (y              ) / height
        ux[2], uy[2] = (x + self.width - TEXTSHIFT) / height, (y + self.height) / height
        ux[3], uy[3] = (x + TEXTSHIFT             ) / height, (y + self.height) / height

        self.poly.x, self.poly.y = ux, uy
        self.poly.color = self.bg
        self.poly.mode = GL_POLYGON
        
        target.render(&self.poly)

        # Ouline
        self.poly.color = self.drawColor()
        self.poly.mode = GL_LINE_LOOP

        target.render(&self.poly)

        # Title
        # ----------------------------------------------------------------------
        self.label.x = x + TEXTSHIFT
        self.label.y = y + self.label.bearing + self.height*0.1
        self.label.setColor(
            self.poly.color.r,
            self.poly.color.g,
            self.poly.color.b,
            self.poly.color.a
        )

        self.label.drawTo(target)