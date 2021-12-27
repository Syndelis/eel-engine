from eelengine import Eel
import eelengine.gui as imgui

# This example is only purposed to experiment with the WIP Dear Imgui integration
# Please disregard anything here, as it will ceirtanly be changed in the future

e = Eel(width=1280, height=720)

@e.draw
def draw(eel):

    imgui.Begin(b"Test window")
    imgui.Text(b"Text for window")
    imgui.End()


e.run()