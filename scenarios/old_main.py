from re import template
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

import os
import io
#import json
import xml.etree.ElementTree as ET
import xml.dom.minidom  
from kivy.config import Config

from readFile import read_parameter_file
Config.set('graphics', 'width', '1200')
Config.set('graphics', 'height', '900')
Config.set('input', 'mouse', 'mouse,multitouch_on_demand')
Config.write()

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
            path: "C:/dissertation/causcumber/scenarios/compare_interventions/features"

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

class displayResult(ScrollView):
    text = StringProperty('')

class LoadDialog(FloatLayout):
    load = ObjectProperty(None)
    cancel = ObjectProperty(None)

class main(App):

    created_file_feature = []
    created_file_xml = []
    current_file = ""
    loadfile = ObjectProperty(None)

    def __init__(self,**kwargs):
        super(main,self).__init__(**kwargs)       
        self.current_File = ""

    def build(self):
        os.chdir('compare_interventions')

        Window.bind(on_request_close=self.on_request_close)
        
        Layout = BoxLayout(orientation = 'vertical')
        banner = Label(text='Causcumber', size_hint=(1, 0.1))
        Layout.add_widget(banner)

        displayLayout = GridLayout(cols=2,  width="600dp")

        resultLayout = GridLayout(cols=1,  width="600dp")
        self.select_feature_file = Button(text='Select feature file', size_hint=(1, 0.1)) # Choose feature file to run
        self.select_feature_file.bind(on_press=self.show_load)
        resultLayout.add_widget(self.select_feature_file) 
        self.Result = Label(text='Result', size_hint=(1, 0.1)) # Title
        resultLayout.add_widget(self.Result)
        self.display_result = displayResult(text='') # Display result
        resultLayout.add_widget(self.display_result)    
        displayLayout.add_widget(resultLayout) 

        inputLayout = GridLayout(cols=1,  width="600dp")
        self.choose_input_title = Label(text='Choose different input', size_hint=(1, 0.3)) # Title
        inputLayout.add_widget(self.choose_input_title) 
        self.compared_parameter1 = Label(text='Compared_parameter1', size_hint=(1, 0.3)) #modify parameter 1
        inputLayout.add_widget(self.compared_parameter1) 
        self.input_compared_parameter1 = TextInput(text='', size_hint=(1, 0.25), multiline=False) 
        inputLayout.add_widget(self.input_compared_parameter1)
        self.compared_parameter2 = Label(text='Compared_parameter2', size_hint=(1, 0.3)) #modify parameter 1
        inputLayout.add_widget(self.compared_parameter2) 
        self.input_compared_parameter2 = TextInput(text='', size_hint=(1, 0.25), multiline=False) 
        inputLayout.add_widget(self.input_compared_parameter2)  

        parameter_list = read_parameter_file()

        for x in range(len(parameter_list)):
            globals()[f"self.paremeter{x}"] = Label(text=parameter_list[x], size_hint=(1, 0.3)) 
            inputLayout.add_widget(globals()[f"self.paremeter{x}"])
            globals()['input%s' % x] = TextInput(text='', size_hint=(1, 0.25), multiline=False) 
            inputLayout.add_widget(globals()['input%s' % x])

        displayLayout.add_widget(inputLayout)
        
        runBehave = Button(text='Run behave', size_hint=(1, 0.1)) # Run update function 
        runBehave.bind(on_press=self.update)
        displayLayout.add_widget(runBehave) 

        saveInput = Button(text='Save input', size_hint=(1, 0.1)) # save input as new feature file
        saveInput.bind(on_press=self.save_file)
        displayLayout.add_widget(saveInput) 

        Layout.add_widget(displayLayout)

        return Layout

    def update(self, userInput):
        os.chdir('reports')
        if bool(self.current_File) == True:
            tree = ET.parse(self.current_File)
            root = tree.getroot()
            result = ""
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
        self.created_file_feature.append(feature_file_name)
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
        filename = filename[0].replace('C:\\dissertation\\causcumber\\scenarios\\compare_interventions\\features\\', '')
        filename_xml = filename.replace('.feature', '')
        behave_cmd = "behave features/"+ filename + " --format json --junit"
        self.current_File = ("TESTS-"+filename_xml+".xml")
        self.created_file_xml.append("TESTS-"+filename_xml+".xml")
        os.system(behave_cmd)       
        self.dismiss_popup()
    
    def on_request_close(self, instance):  #remove results.json and other feature file created when closing the program
        os.chdir('reports')
        for self.created_file_xml in self.created_file_xml:
            os.remove(self.created_file_xml)
        os.chdir('..')
        #os.remove("results.json")
        os.chdir('features')
        for self.created_file_feature in self.created_file_feature:
            os.remove(self.created_file_feature)
        os.chdir('..')
        print("Closing")

Factory.register('LoadDialog', cls=LoadDialog)
main().run()