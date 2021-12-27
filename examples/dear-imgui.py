from eelengine import Eel
import eelengine.gui as imgui

# This example is only purposed to experiment with the WIP Dear Imgui integration
# Please disregard anything here, as it will ceirtanly be changed in the future

e = Eel(width=1280, height=720)

@e.load
def load(eel):
    imgui.Init(eel)


@e.draw
def draw(eel):

    imgui.NewFrame()    # ImGui_ImplOpenGL3_NewFrame()
                        # ImGui_ImplGlfw_NewFrame()
                        # NewFrame()

    imgui.Begin(b"Test window")
    imgui.Text(b"Text for window")
    imgui.End()

    imgui.Render()


e.run()
imgui.Terminate()