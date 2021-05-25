from random import randint
from sys import path

# NOTE: This weird import down here only looks this way because the module
#       is located at the root . directory, while this file is at ./examples.
#       Usually you would simply use `from eel import Eel`, with none of that
#       Down there.

ATTEMPTS = 4
for i in range(ATTEMPTS):

    try:
        from eelengine import Eel, keyPressed, Canvas
        from eelengine.figure import Rectangle, Line
        from eelengine.shader import Shader
        break

    except ModuleNotFoundError:
        path.insert(0, '../' * (i+1))

WIDTH, HEIGHT = 640, 480
SQ = 32
GAME_END = False
VSYNC = True # Setting this to false will likely cause screen flickering

class Snake:

    dirs = {
        b'W': ( 0, -1),
        b'A': (-1,  0),
        b'S': ( 0,  1),
        b'D': ( 1,  0)
    }

    def __init__(self, x, y, size=3, grid=SQ, width=WIDTH, height=HEIGHT):

        self.body = [
            Rectangle(x + grid*i, y, width=grid, height=grid, fill=True)
            for i in range(size)
        ]

        self.dir = Snake.dirs[b'A']
        self.max = (round(width/grid-1)*grid, round(height/grid-1)*grid)
        self.grid = grid
        self.olddir = self.dir


    def grow(self):
        self.body.append(None)

    
    def step(self) -> bool:
        # Returns wether the game ends or not

        self.olddir = self.dir
        
        nextpos = (
            self.head.x + self.dir[0] * self.grid,
            self.head.y + self.dir[1] * self.grid
        )

        for i, v in enumerate(nextpos):
            if v < 0 or v > self.max[i]:
                return True

        for i in range(1, len(self.body)):
            v = self.body[i]
            if v and nextpos == v.pos:
                return True

        for i in range(1, len(self.body))[::-1]:
            v = self.body[i]
            if v:
                v.pos = self.body[i-1].pos

            else:
                v = self.body[i-1]
                self.body[i] = Rectangle(
                    v.x, v.y, width=self.grid,
                    height=self.grid, fill=True
                )

        self.body[0].pos = nextpos


    def input(self, inp):

        pot = Snake.dirs[inp]
        if not (pot[0] == -self.olddir[0] and pot[1] == -self.olddir[1]):
            self.dir = pot

    
    def drawTo(self, target):

        for i in self.body:
            if i:
                # i.setColor(0, 200, 0)
                i.setColor(200, 200, 200)
                i.drawTo(target)


    def getHead(self):
        return self.body[0]


    def getTail(self):
        return self.body[-1]


    def __len__(self):
        return len(self.body)


    def __iter__(self):
        return iter(self.body)


    head = property(getHead)
    tail = property(getTail)


game = Eel(name="Snake", width=WIDTH, height=HEIGHT, vsync=VSYNC)

global player, apple, maxtimer, timer
player, apple, maxtimer, timer = None, None, None, None

# To be applied in this order
global shadernames, shaders, canvases, ccount
shadernames = (b'crt.frag', b'chroma.frag', b'vignette.frag')
# shadernames = (b'pass.frag',)
shaders = None
canvases = None
ccount = 0

def newApple():
    global apple, player

    done = False
    while not done:
        done = True
        apple.pos = (randint(0, player.max[0]/SQ)*SQ, randint(0, player.max[1]/SQ)*SQ)

        for segment in player:
            if segment and apple.pos == segment.pos:
                done = False


@game.load
def startGame(eel):
    global player, apple, maxtimer, timer, GAME_END, shaders, canvases, shadernames

    player = Snake(round(WIDTH/2 / SQ)*SQ, round((HEIGHT - SQ)/2 / SQ)*SQ)
    apple = Rectangle(0, 0, width=SQ, height=SQ, fill=True)
    apple.setColor(200, 0, 0)
    newApple()

    maxtimer = 4
    timer = maxtimer

    GAME_END = False

    if shaders is None:
        shaders = []
        for v in shadernames:
            
            sh = Shader(b'pass.vert', v)

            with sh:
                sh.setUniform(b'canvasTexture', (0,))
                sh.setUniform(b'resolution', eel.dimensions)

            shaders.append(sh)

    
    if canvases is None:
        canvases = [Canvas(*eel.dimensions) for i in range(2)]            


@game.draw
def gameLogic(eel):
    global player, maxtimer, timer, GAME_END, canvases, shaders, lines, ccount

    if VSYNC: timer -= 1 * (not GAME_END)
    else:
        fps = eel.fps or 60
        timer -= (1 / fps * 60 * (not GAME_END))


    if keyPressed(256): exit()
    if keyPressed(b"R"):
        startGame(eel)
        GAME_END = False

    if timer <= 0:

        for k, v in Snake.dirs.items():
            if keyPressed(k): player.input(k)

        GAME_END = player.step()
        timer = maxtimer

        if apple.pos == player.head.pos:
            player.grow()
            newApple()

    for c in canvases: c.clear()
    player.drawTo(canvases[0])
    apple.drawTo(canvases[0])
    for l in lines: l.drawTo(canvases[0])

    for i, sh in enumerate(shaders):

        with sh:
            ccount = i&1
            canvases[ccount].drawTo(canvases[1-ccount])

    ccount = (i+1)&1

    canvases[ccount].drawTo(eel)

    
global lines
lines = []

for y in range(0, HEIGHT, SQ):
    l = Line(0, y, xp=WIDTH, yp=y)
    l.setColor(50, 50, 50, 50)
    lines.append(l)

for x in range(0, WIDTH, SQ):
    l = Line(x, 0, xp=x, yp=HEIGHT)
    l.setColor(50, 50, 50, 50)
    lines.append(l)

# @game.draw
# def drawGrid(eel):
#     global lines
#     for l in lines: l.drawTo(eel)


game.run()