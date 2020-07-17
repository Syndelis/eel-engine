from time import time
from random import randint
from sys import path

# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.

# TODO: Remake this game so that the code is less spaghetty

ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eel import Eel, keyPressed
        from figure import Rectangle, Circle, Line, Triangle, Sprite, basicRec
        break

    except ModuleNotFoundError:
        path.insert(0, '..')


WIDTH, HEIGHT = 640, 480
SQ = 32
GAME_END = False
VSYNC = False

class Vector:

    def __init__(self, x, y):
        self.x = int(x)
        self.y = int(y)

    
    def __mul__(self, other):

        if type(other) in (int, float):
            return Vector(self.x * other, self.y * other)

        else:
            raise TypeError("Can only multiply Vector by a number")

    def __add__(self, other):

        if type(other) == Vector:
            return Vector(self.x + other.x, self.y + other.y)

        else:
            raise TypeError("Can only add Vector to another Vector")

    def __sub__(self, other):
        return self + (-other)

    def __neg__(self):
        return Vector(-self.x, -self.y)

    def __str__(self):
        return f"{{x: {self.x}, y: {self.y}}}"

    def __eq__(self, other):
        return (self.x == other.x and self.y == other.y)

global dirs, keys, opos

dirs = {
    'left': Vector(-1, 0), 'right': Vector(1, 0),
    'up': Vector(0, -1), 'down': Vector(0, 1)
}

keys = {
    b"W": 'up',
    b"S": 'down',
    b"A": 'left',
    b"D": 'right'
}

opos = {
    'left': 'right',
    'right': 'left',
    'up': 'down',
    'down': 'up'
}

# Preloading Rectangles
for y in range(HEIGHT//SQ):
    for x in range(WIDTH//SQ):
        r = Rectangle.new(x*SQ, y*SQ, width=SQ, height=SQ, fill=True)
        r.setColor(0, 200, 0)

class Snake:

    def __init__(self, x, y, size=3, grid=32, width=640, height=480):
        self.body = [Vector(x + 32*i, y) for i in range(size)]
        self.dir = 'left'
        self.grid = grid

        self.max = Vector(width-grid, height-grid)

    def grow(self, amnt=1):
        for i in range(amnt): self.body.append(None)


    def step(self):
        global dirs, GAME_END

        nextpos = self.head + dirs[self.dir] * self.grid

        if nextpos.x < 0 or nextpos.x > self.max.x or\
            nextpos.y < 0 or nextpos.y > self.max.y:
            GAME_END = True
            return;

        for i in self.body[1:]:
            if (i and nextpos == i):
                GAME_END = True
                return;

        for i in range(1, len(self.body))[::-1]:
            self.body[i] = self.body[i-1]

        self.body[0] += dirs[self.dir] * self.grid

    def draw(self, eel):
        for i in self.body:
            if (i):
                r = Rectangle(i.x, i.y, width=self.grid, height=self.grid, fill=True)
                r.setColor(0, 200, 0)
                r(eel)
                # basicRec(i.x, i.y, self.grid, self.grid, eel)

    def getHead(self):
        return self.body[0]

    def getTail(self):
        return self.body[-1]

    def __len__(self):
        return len(self.body)

    head = property(getHead)
    tail = property(getTail)

e = Eel(vsync=VSYNC)

global player, apple, maxtimer, timer
player, apple, maxtimer, timer = None, None, None, None

def newApple():
    global apple, player

    r = player.head
    done = False

    while not done:
        done = True
        r = Vector(randint(0, WIDTH/SQ - 1) * SQ,randint(0, HEIGHT/SQ - 1) * SQ)
        for i in player.body:
            if i and r == i: done = False

    apple = r


@e.load
def startGame(eel):
    global player, apple, maxtimer, timer

    player = Snake(
        WIDTH/2, HEIGHT/2 - SQ/2,
        width=WIDTH, height=HEIGHT
    )
    newApple()
    maxtimer = 4
    timer = maxtimer
    GAME_END = False

@e.draw
def playerLogic(eel):
    global player, maxtimer, timer, keys, opos, GAME_END

    print(eel.fps)

    player.draw(eel)

    olddir = player.dir

    if keyPressed(256): exit()
    if keyPressed(b"R"):
        startGame(eel)
        GAME_END = False

    if VSYNC:
        timer -= 1 * (not GAME_END)

    else:
        fps = eel.fps or 60
        timer -= (1 / fps * 60 * (not GAME_END))

    if timer <= 0:
        for k, v in keys.items():
            if keyPressed(k) and player.dir != opos[v] and v != opos[olddir]:
                player.dir = v

        player.step()
        timer = maxtimer

@e.draw
def appleLogic(eel):
    global apple, player

    r = Rectangle.new(apple.x, apple.y, width=SQ, height=SQ)
    r.setColor(200, 0, 0)
    r(eel)

    if apple == player.head:
        player.grow()
        newApple()


# Preloading lines
global lines
lines = []
for y in range(0, HEIGHT, SQ):
    l = Line.new(0, y, xp=WIDTH, yp=y)
    l.setColor(50, 50, 50, 50)
    lines.append(l)

for x in range(0, WIDTH, SQ):
    l = Line.new(x, 0, xp=x, yp=HEIGHT)
    l.setColor(50, 50, 50, 50)
    lines.append(l)

@e.draw
def drawLines(eel):
    global lines
    for i in lines: i(eel)

e.run()