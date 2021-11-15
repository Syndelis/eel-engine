from eelengine import Eel
from eelengine.gui import startGUI, updateGUI, renderGUI, endGUI, Window

# This example is only purposed to experiment with the WIP Dear Imgui integration
# Please disregard anything here, as it will ceirtanly be changed in the future

e = Eel()
global win
win = None

@e.load
def load(eel):
    global win

    startGUI(eel)
    win = Window()


@e.draw
def draw(eel):
    global win

    updateGUI() # ImGui_ImplOpenGL3_NewFrame()
                # ImGui_ImplGlfw_NewFrame()
                # NewFrame()

    win.draw()  # Begin(self.name)
                # Text(b"This is a test")
                # End()

    renderGUI() # Render()


e.run()
endGUI()