from eelengine import Eel, mousePressed
from eelengine.figure import Circle
from dataclasses import dataclass

GRAV = 10

@dataclass
class Ball(Circle):
	force: float=0

	def move(self, screen):

		if mousePressed(0) and self.isInside(*screen.mouse):
			self.pos = screen.mouse
			self.force = 0

		elif self.y < screen.height - self.radius:
			self.force += GRAV/(screen.fps or 60)
			self.y += min(self.force, screen.height-self.radius-self.y)

		else:
			self.force *= -0.6
			self.y += self.force

game = Eel()
ball = Ball(game.width/2, game.height/2, 40, fill=True)
ball2 = Ball(400, 200, 20, fill=True).setColor(20, 100, 200)

@game.draw
def draw(screen):
	ball.move(screen)
	ball.drawTo(screen)

	ball2.move(screen)
	ball2.drawTo(screen)

game.run()
