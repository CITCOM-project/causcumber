from kivy.config import Config
Config.set('graphics', 'width', '1200')
Config.set('graphics', 'height', '900')
Config.set('input', 'mouse', 'mouse,multitouch_on_demand')
Config.write()

from kivy.app import App
from kivy.core.window import Window
from kivy.uix.screenmanager import ScreenManager, FadeTransition

import os
import gui.removeFile
import gui.selectScenario
#from gui.selectScenario import HomeScreen
#from gui.selectScenario import SelectScenario
#from gui.selectScenario import NewScenario
from gui.mainWindow import MainWindow
from gui.editDotWindow1 import EditDotWindow1
from gui.editDotWindow2 import EditDotWindow2
##################

class ScreenManagement(ScreenManager):
    def __init__(self, **kwargs):
        super(ScreenManagement, self).__init__(**kwargs)
        
class Application(App):
    def build(self):

        Window.bind(on_request_close=self.on_request_close)

        os.chdir('scenarios')    
        sm = ScreenManagement(transition=FadeTransition())
        sm.add_widget(gui.selectScenario.HomeScreen(name='home'))
        sm.add_widget(gui.selectScenario.SelectScenario(name='select scenario'))
        sm.add_widget(gui.selectScenario.NewScenario(name='new scenario'))
        sm.add_widget(MainWindow(name='Main'))
        sm.add_widget(EditDotWindow1(name='edit dot1'))  
        sm.add_widget(EditDotWindow2(name='edit dot2'))      
        return sm

    def on_request_close(self, instance):  #remove results.json and other feature file created when closing the program                  
        gui.removeFile.remove_file()
        print("Closing")

if __name__ == "__main__":  
    Application().run()