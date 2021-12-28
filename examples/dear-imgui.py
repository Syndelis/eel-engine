from eelengine import Eel
from eelengine.figure import Vector
import eelengine.gui as imgui

# This example is only purposed to experiment with the WIP Dear Imgui integration
# Please disregard anything here, as it will ceirtanly be changed in the future

e = Eel(width=1280, height=720)

global a, b, c, d
a = True
b = False
c = False
d = True

@e.draw
def draw(eel):
    global a, b, c, d

    imgui.Begin("Text window")
    imgui.Text(f"FPS: {eel.fps}")
    imgui.Text("Text for window, but with color", color=Vector(1., .8, .2, 1.))
    imgui.TextDisabled("Disabled text")
    imgui.TextWrapped("This big chunk of wrapping paper around my text")
    imgui.LabelText("'Tis a Label", "'Tis a text")
    imgui.BulletText("Bullets pow pow")
    imgui.End()

    imgui.Begin("Button window")
    imgui.Button("Button ...")
    imgui.SmallButton("Small button")
    # imgui.InvisibleButton("Button ...")
    # imgui.ArrowButton("Small button")
    a = imgui.Checkbox("Choice a)", a)
    b = imgui.Checkbox("Choice b)", b)

    c = imgui.RadioButton("Radio button c)", c)
    d = imgui.RadioButton("Radio button d)", d)

    imgui.End()

    imgui.Begin("Bar")
    imgui.ProgressBar(.75)
    imgui.End()

    print(a, b, c, d)

e.run()