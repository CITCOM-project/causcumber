from re import L, template
import re
from kivy.app import App
from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.floatlayout import FloatLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.scrollview import ScrollView
from kivy.lang import Builder
from kivy.properties import StringProperty
from kivy.core.window import Window
from kivy.factory import Factory
from kivy.properties import ObjectProperty
from kivy.uix.popup import Popup
from kivy.uix.screenmanager import ScreenManager, Screen

import os
import xml.etree.ElementTree as ET

##################
import numpy as np
from math import sin
import re
from kivy_garden.graph import Graph, MeshLinePlot
##################
from gui.removeFile import created_file_feature
from gui.removeFile import created_file_xml
from gui.readFile import read_parameter_file
##################

Builder.load_string('''
<displayResult>:
    Label:
        text: root.text
        font_size: 15
        text_size: self.width, None
        size_hint_y: None
        height: self.texture_size[1]
<LoadDialog>:
    BoxLayout:
        size: root.size
        pos: root.pos
        orientation: "vertical"
        FileChooserListView:
            id: filechooser
            path: "features"

        BoxLayout:
            size_hint_y: None
            height: 30
            Button:
                text: "Cancel"
                on_release: root.cancel()

            Button:
                text: "Load"
                on_release: root.load(filechooser.path, filechooser.selection) 
''')

class ScreenManagement(ScreenManager):
    def __init__(self, **kwargs):
        super(ScreenManagement, self).__init__(**kwargs)

class displayResult(ScrollView):
    text = StringProperty('')
            
class LoadDialog(FloatLayout):
    load = ObjectProperty(None)
    cancel = ObjectProperty(None)

class MainWindow(Screen):
    loadfile = ObjectProperty(None)

    def __init__(self, **kwargs):
        super(MainWindow, self).__init__(**kwargs)
        self.current_File = ""       
        
        layout = BoxLayout(orientation = 'vertical')

        bannerLayout = GridLayout(cols=2, size_hint=(1, 0.05))
        bannerLayout.add_widget(Label(text='Causcumber'))
        exit_scenario_btn = Button(text='Exit', size_hint_x = None, width = 100) # Choose feature file to run
        exit_scenario_btn.bind(on_press=self.exit_scenario)
        bannerLayout.add_widget(exit_scenario_btn) 

        layout.add_widget(bannerLayout)
        
        displayLayout = GridLayout(cols=2)

        self.resultLayout = BoxLayout(orientation = 'vertical')
        self.select_feature_file = Button(text='Select feature file', size_hint=(1, 0.1)) # Choose feature file to run
        self.select_feature_file.bind(on_press=self.show_load)
        self.resultLayout.add_widget(self.select_feature_file) 
        self.resultLayout.add_widget(Label(text='Result', size_hint=(1, 0.1)))
        self.display_result = displayResult(text='') # Display result
        self.resultLayout.add_widget(self.display_result) 
        
        ############################
        self.graph = Graph(xlabel='X', ylabel='Y', x_ticks_minor=5,
            x_ticks_major=25, y_ticks_major=1,
            y_grid_label=True, x_grid_label=True, padding=5,
            x_grid=True, y_grid=True, xmin=-1, xmax=1, ymin=0, ymax=3) 
        self.resultLayout.add_widget(self.graph)
        ############################

        runBehave = Button(text='Run behave', size_hint=(1, 0.145)) # Run update function 
        runBehave.bind(on_press=self.update)
        self.resultLayout.add_widget(runBehave) 

        displayLayout.add_widget(self.resultLayout) 

        inputLayout = BoxLayout(orientation = 'vertical', size_hint_x = None, width = 300)
        ############################
        editDotFile = Button(text='Edit dot files', size_hint=(1, 0.17)) # create dot files
        editDotFile.bind(on_press=self.screen_transition)
        inputLayout.add_widget(editDotFile) 
        ############################
        inputLayout.add_widget(Label(text='Choose different input', size_hint=(1, 0.2))) # Title
        inputLayout.add_widget(Label(text='Compared_parameter1', size_hint=(1, 0.2))) #modify parameter 1
        self.input_compared_parameter1 = TextInput(text='', size_hint=(1, 0.16), multiline=False) 
        inputLayout.add_widget(self.input_compared_parameter1)
        inputLayout.add_widget(Label(text='Compared_parameter2', size_hint=(1, 0.2))) #modify parameter 1
        self.input_compared_parameter2 = TextInput(text='', size_hint=(1, 0.16), multiline=False) 
        inputLayout.add_widget(self.input_compared_parameter2)

        parameter_list = read_parameter_file()

        for x in range(len(parameter_list)):
            globals()[f"self.paremeter{x}"] = Label(text=parameter_list[x], size_hint=(1, 0.2)) 
            inputLayout.add_widget(globals()[f"self.paremeter{x}"])
            globals()['input%s' % x] = TextInput(text='', size_hint=(1, 0.16), multiline=False) 
            inputLayout.add_widget(globals()['input%s' % x])

        inputLayout.add_widget(Label(text='', size_hint=(1, 0.15)))
        saveInput = Button(text='Save input', size_hint=(1, 0.25)) # save input as new feature file
        saveInput.bind(on_press=self.save_file)
        inputLayout.add_widget(saveInput) 

        displayLayout.add_widget(inputLayout)    

        layout.add_widget(displayLayout)
        
        self.add_widget(layout)

    def update(self, userInput):
        os.chdir('reports')
        if bool(self.current_File) == True:
            tree = ET.parse(self.current_File)
            root = tree.getroot()
            result = ""
            graph_counter = 1
            for child in root:
                if child.tag == "testcase":
                    ertag = child.find("system-out")
                    cdatatext = ertag.text
                    printable = False
                    for item in cdatatext.split("\n"):                       
                        if item.find("Given a simulation with parameters") != -1:
                            printable = True
                        elif item.find("And") != -1:
                            printable = False
                        if printable  == True :
                            result += str(item.strip()) 
                            result += "\n"
                        if "Confidence" in item:
                            pattern1 = "95% Confidence Intervals: \[(.*?)\,"
                            pattern2 = "\,(.*?)\]"
                            point1 = float(re.search(pattern1, item).group(1))
                            if point1 < self.graph.xmin:
                                self.graph.xmin = point1-10
                            point2 = float(re.search(pattern2, item).group(1))
                            if point2 > self.graph.xmax:
                                self.graph.xmax = point2+10
                            ########################## place holder require data
                            plot1 = MeshLinePlot(color=[0, 1, 0, 1])
                            plot1.points = [(x, graph_counter) for x in np.arange(point1, point2)]
                            graph_counter+=1 
                            self.graph.ymax=graph_counter+1                        
                            self.graph.add_plot(plot1)
                            ##########################

                            result += str(item.strip())
                            result += "\n"                 

                if child.find("error") is not None:
                    ertag = child.find("error")
                    cdatatext = ertag.text
                    result += str(cdatatext)
                    result += "\n"
                
                result += "\n"
                result += "\n"
                result += str(child.attrib)
                result += "\n"

            self.display_result.text = result
        else:
            self.display_result.text = "Please select a feature file"
        os.chdir('..')   

    def save_file(self, instance):
        compared_parameter_input1 = self.input_compared_parameter1.text
        compared_parameter_input1 = compared_parameter_input1.replace('\t', '')

        compared_parameter_input2 = self.input_compared_parameter2.text
        compared_parameter_input2 = compared_parameter_input2.replace('\t', '')

        parameter_list = read_parameter_file()

        for x in range(len(parameter_list)):
            globals()['parameter_input%s' % x] = globals()['input%s' % x].text
            globals()['parameter_input%s' % x] = globals()['parameter_input%s' % x].replace('\t', '')

        feature_file_name = "compare_" + compared_parameter_input1 + "_" + compared_parameter_input2 + ".feature"    #generate file name based on input 
        created_file_feature.append(feature_file_name)

        os.chdir('features')
        file = open("feature_template.txt",encoding="utf-8")
        template = file.read()

        for x in range(len(parameter_list)):
            template = template.replace("["+parameter_list[x]+"_place_holder]", globals()['parameter_input%s' % x])

        file.close()
        f = open(feature_file_name, "a")                                                           #generate feature file with input file name   
        f.write(template)
        f.close()
        os.chdir('..')

    def dismiss_popup(self):
        self._popup.dismiss()

    def show_load(self, instance):
        content = LoadDialog(load=self.load, cancel=self.dismiss_popup)
        self._popup = Popup(title="Load file", content=content, size_hint=(0.9, 0.9))
        self._popup.open()

    def load(self, path, filename):
        filename = filename[0][0: 0:] + filename[0][filename[0].rfind('\\') + 1::]
        filename_xml = filename.replace('.feature', '')
        behave_cmd = "behave features/"+ filename + " --format json --junit"
        self.current_File = ("TESTS-"+filename_xml+".xml")
        created_file_xml.append("TESTS-"+filename_xml+".xml")
        os.system(behave_cmd)       
        self.dismiss_popup()

    def screen_transition(self, *args):
        self.manager.current = 'edit dot1'

    def exit_scenario(self, *args):
        os.chdir('..')
        self.manager.current = 'home'

Factory.register('LoadDialog', cls=LoadDialog)