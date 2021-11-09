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
Config.set('graphics', 'width', '1200')
Config.set('graphics', 'height', '700')
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
        os.chdir('compare_interventions')
        self.current_File = ""

    def build(self):

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
        self.choose_input_title = Label(text='Choose different input', size_hint=(1, 0.1)) # Title
        inputLayout.add_widget(self.choose_input_title) 
        self.paremeter1 = Label(text='Parameter 1', size_hint=(1, 0.1)) #modify parameter 1
        inputLayout.add_widget(self.paremeter1) 
        self.input1 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input1)
        self.paremeter2 = Label(text='Parameter 2', size_hint=(1, 0.1)) #modify parameter 2
        inputLayout.add_widget(self.paremeter2) 
        self.input2 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input2)  

        self.paremeter2 = Label(text='quar_period(int)', size_hint=(1, 0.1)) #modify parameter 
        inputLayout.add_widget(self.paremeter2) 
        self.input3 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input3)  
        self.paremeter2 = Label(text='n_days(int)', size_hint=(1, 0.1)) #modify parameter 
        inputLayout.add_widget(self.paremeter2) 
        self.input4 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input4)  
        self.paremeter2 = Label(text='pop_type(str)', size_hint=(1, 0.1)) #modify parameter
        inputLayout.add_widget(self.paremeter2) 
        self.input5 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input5)  
        self.paremeter2 = Label(text='pop_size(int)', size_hint=(1, 0.1)) #modify parameter 
        inputLayout.add_widget(self.paremeter2) 
        self.input6 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input6)  
        self.paremeter2 = Label(text='pop_infected(int)', size_hint=(1, 0.1)) #modify parameter 
        inputLayout.add_widget(self.paremeter2) 
        self.input7 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input7)  
        self.paremeter2 = Label(text='location(str)', size_hint=(1, 0.1)) #modify parameter 
        inputLayout.add_widget(self.paremeter2) 
        self.input8 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input8)  
        self.paremeter2 = Label(text='interventions(str)', size_hint=(1, 0.1)) #modify parameter 
        inputLayout.add_widget(self.paremeter2) 
        self.input9 = TextInput(text='', size_hint=(1, 0.5), multiline=False) 
        inputLayout.add_widget(self.input9)   
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
        parameter_input1 = self.input1.text
        parameter_input2 = self.input2.text
        parameter_input3 = self.input3.text
        parameter_input4 = self.input4.text
        parameter_input5 = self.input5.text
        parameter_input6 = self.input6.text
        parameter_input7 = self.input7.text
        parameter_input8 = self.input8.text
        parameter_input9 = self.input9.text
        feature_file_name = "compare_" + parameter_input1 + "_" + parameter_input2 + ".feature"    #generate file name based on input
        self.created_file_feature.append(feature_file_name)
        os.chdir('features')
        file = open("feature_template.txt",encoding="utf-8")
        template = file.read()

        template = template.replace("[quar_period_place_holder]", parameter_input3)
        template = template.replace("[n_days_place_holder]", parameter_input4)
        template = template.replace("[pop_type_place_holder]", "hybrid")
        template = template.replace("[pop_size_place_holder]", parameter_input6)
        template = template.replace("[pop_infected_place_holder]", parameter_input7)
        template = template.replace("[location_place_holder]", "UK")
        template = template.replace("[interventions_place_holder]", "baseline")

        file.close()
        f = open(feature_file_name, "a")                                                           #generate feature file with input file name   
        f.write(template)
        f.close()
        os.chdir('..')

    def dismiss_popup(self):
        self._popup.dismiss()

    def show_load(self, instance):
        content = LoadDialog(load=self.load, cancel=self.dismiss_popup)
        self._popup = Popup(title="Load file", content=content,
                            size_hint=(0.9, 0.9))
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