from kivy.config import Config
Config.set('graphics', 'width', '1200')
Config.set('graphics', 'height', '900')
Config.set('input', 'mouse', 'mouse,multitouch_on_demand')
Config.write()

from re import L, template
import re
from kivy.app import App
from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.floatlayout import FloatLayout
from kivy.uix.scatterlayout import Scatter
from kivy.uix.button import Button
from kivy.uix.checkbox import CheckBox
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.scrollview import ScrollView
from kivy.lang import Builder
from kivy.properties import StringProperty
from kivy.core.window import Window
from kivy.factory import Factory
from kivy.properties import ObjectProperty
from kivy.uix.popup import Popup
from kivy.uix.screenmanager import ScreenManager, Screen, FadeTransition

import os
import io
#import json
import xml.etree.ElementTree as ET
import xml.dom.minidom  

##################
from matplotlib import pyplot as plt
import numpy as np
from math import sin
import re
from kivy_garden.graph import Graph, MeshLinePlot
##################
from readFile import read_parameter_file
from kivy.uix.image import Image
from kivy.uix.dropdown import DropDown
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

class ScreenManagement(ScreenManager):
    def __init__(self, **kwargs):
        super(ScreenManagement, self).__init__(**kwargs)

class displayResult(ScrollView):
    text = StringProperty('')
            
class LoadDialog(FloatLayout):
    load = ObjectProperty(None)
    cancel = ObjectProperty(None)

created_file_feature = []
created_file_xml = []
current_file = ""

class MainWindow(Screen):
    loadfile = ObjectProperty(None)

    def __init__(self, **kwargs):
        super(MainWindow, self).__init__(**kwargs)
        os.chdir('compare_interventions')
        self.current_File = ""       
        
        Layout = BoxLayout(orientation = 'vertical')
        Layout.add_widget(Label(text='Causcumber', size_hint=(1, 0.1)))

        displayLayout = GridLayout(cols=2,  width="600dp")

        self.resultLayout = GridLayout(cols=1,  width="600dp")
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

        displayLayout.add_widget(self.resultLayout) 

        inputLayout = GridLayout(cols=1,  width="600dp")
        ############################
        editDotFile = Button(text='Edit dot files', size_hint=(1, 0.25)) # create dot files
        editDotFile.bind(on_press=self.screen_transition)
        inputLayout.add_widget(editDotFile) 
        ############################
        inputLayout.add_widget(Label(text='Choose different input', size_hint=(1, 0.3))) # Title
        inputLayout.add_widget(Label(text='Compared_parameter1', size_hint=(1, 0.3))) #modify parameter 1
        self.input_compared_parameter1 = TextInput(text='', size_hint=(1, 0.25), multiline=False) 
        inputLayout.add_widget(self.input_compared_parameter1)
        inputLayout.add_widget(Label(text='Compared_parameter2', size_hint=(1, 0.3))) #modify parameter 1
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
        
        self.add_widget(Layout)

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

        global created_file_feature
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
        global created_file_xml
        filename = filename[0].replace('C:\\dissertation\\causcumber\\scenarios\\compare_interventions\\features\\', '')
        filename_xml = filename.replace('.feature', '')
        behave_cmd = "behave features/"+ filename + " --format json --junit"
        self.current_File = ("TESTS-"+filename_xml+".xml")
        created_file_xml.append("TESTS-"+filename_xml+".xml")
        os.system(behave_cmd)       
        self.dismiss_popup()

    def screen_transition(self, *args):
        self.manager.current = 'edit dot1'

Factory.register('LoadDialog', cls=LoadDialog)


class EditDotWindow1(Screen):
    def __init__(self, **kwargs):
        super(EditDotWindow1, self).__init__(**kwargs)
        Layout = BoxLayout(orientation = 'vertical')
        Layout.add_widget(Label(text='Causcumber', size_hint=(1, 0.1)))

        displayLayout = GridLayout(cols=2,  width="600dp")

        self.resultLayout = BoxLayout(orientation = 'vertical')
        self.resultLayout.add_widget(Label(text='Graphviz', size_hint=(1, 0.1)))# Title
        os.chdir('dags')
        img_viewer = BoxLayout(orientation = 'vertical')
        self.img=Image(source='graphviz_graph.png')
        self.img.allow_stretch = False
        self.img.keep_ratio = True
        self.img.size_hint_x = 1
        self.img.size_hint_y = 1
        img_viewer.add_widget(self.img)

        view_img_btn = Button(text='view graph', size_hint=(1, 0.08)) # view graphviz in another window
        view_img_btn.bind(on_press = self.view_graph)
        img_viewer.add_widget(view_img_btn) 

        self.resultLayout.add_widget(img_viewer) 
        os.chdir('..')
        
        displayLayout.add_widget(self.resultLayout) 

        self.inputLayout = BoxLayout(orientation = 'vertical')
        
        self.inputLayout.add_widget(Label(text='Enter file name', size_hint=(1, 0.1))) # Title
        self.dot_file_name = TextInput(text='', size_hint=(1, 0.15), multiline=False) 
        self.inputLayout.add_widget(self.dot_file_name)
        

        self.inputLayout.add_widget(Label(text='Edit cluster graph', size_hint=(1, 0.1))) # Title 

        self.inputLayout.add_widget(Label(text='Choose graph type', size_hint=(1, 0.1))) # choose between graph or sub graph

        self.select_graph_type = GridLayout(cols=2, size_hint=(1, 0.2))
        self.inputLayout.add_widget(self.select_graph_type)
        
        subgraph_label= Label(text="subgraph", size_hint=(1, 0.1)) 
        self.select_graph_type.add_widget(subgraph_label)
        self.subgraph_label_chk = CheckBox(active  = False)
        self.select_graph_type.add_widget(self.subgraph_label_chk)

        self.inputLayout.add_widget(Label(text='Enter graph name', size_hint=(1, 0.1)))
        self.graph_name = TextInput(text='', size_hint=(1, 0.15), multiline=False) 
        self.inputLayout.add_widget(self.graph_name)

        self.inputLayout.add_widget(Label(text='Enter graph label', size_hint=(1, 0.1)))
        self.graph_label = TextInput(text='', size_hint=(1, 0.15), multiline=False) 
        self.inputLayout.add_widget(self.graph_label)

        self.inputLayout.add_widget(Label(text='Enter parameters', size_hint=(1, 0.1))) #modify parameter 1       
        self.choose_parameter = TextInput(text='', size_hint=(1, 1.8), multiline=True) 
        self.inputLayout.add_widget(self.choose_parameter)
        
        self.save_output = Button(text='Add graph', size_hint=(1, 0.1)) # save input as new feature file
        self.save_output.bind(on_press = self.add_new_graph)
        self.inputLayout.add_widget(self.save_output) 
        
        undoOutput = Button(text='undo graph', size_hint=(1, 0.1)) # save input as new feature file
        undoOutput.bind(on_press = self.undo_output_parameter)
        self.inputLayout.add_widget(undoOutput)  

        displayLayout.add_widget(self.inputLayout)

        Layout.add_widget(displayLayout)

        self.nextBtn = Button(text='Next', size_hint=(1, 0.1))
        self.nextBtn.bind(on_press = self.next_step)
        Layout.add_widget(self.nextBtn)  

        self.returnBtn = Button(text='Back', size_hint=(1, 0.1))
        self.returnBtn.bind(on_press = self.screen_transition)
        Layout.add_widget(self.returnBtn)    
 
        self.add_widget(Layout)    

    def view_graph(self, instance):
        os.chdir('dags')      
        os.startfile("graphviz_graph.png")
        os.chdir('..')

    def screen_transition(self, instance):
        for file in os.listdir('dags'):
            os.chdir('dags')
            if file.endswith('.png'):
                os.remove(file)
            os.chdir('..') 
        self.img.reload()
        self.dot_file_name.text = ''
        self.subgraph_label_chk.active = False
        self.graph_name.text = ''
        self.graph_name.text = ''
        self.graph_label.text = ''
        self.choose_parameter.text = ''

        self.manager.current = 'Main'

    def next_step(self, instance):
        self.manager.current = 'edit dot2'
    
    def add_new_graph(self, instance):
        os.chdir('dags')
        filename = self.dot_file_name.text + ".dot" 
        
        if os.path.isfile(filename):    #if new dot file, write the basic content
            f = open(filename,"r+", encoding="utf-8")           
            if """digraph "" {\n    graph [newrank=True,\n        rankdir=LR\n    ];""" not in f.read():
                f.write("""digraph "" {\n    graph [newrank=True,\n        rankdir=LR\n    ];\n""")
        else:
            f = open(filename,"a")
            f.write("""digraph "" {\n    graph [newrank=True,\n        rankdir=LR\n    ];\n""")
        f.close()
            
        f = open(filename,"r+", encoding="utf-8")
        content=f.read()
        if content.rfind('}') > 0:
            content=content[:content.rfind('}')]
        f.close()
        
        with open(filename, 'r+') as f:   #empty file
                f.truncate(0)

        if self.subgraph_label_chk.active == False:
            content += """    {\n        graph [graph_name=""" + self.graph_name.text + ",label=" + self.graph_label.text + "];"
        else:
            content += "    subgraph " + self.graph_name.text + " {\n" + "        graph [label=\"" + self.graph_label.text + "\"];"      
        
        split_parameters = self.choose_parameter.text.split()
        for x in split_parameters:
            x = x.replace('\n', '')
            x = x.replace(';', '')
            content += '\n        ' + x + ';' 

        content += "\n    }\n}"
        self.subgraph_label_chk.active = False
        self.graph_name.text = ''
        self.graph_label.text = ''
        self.choose_parameter.text = ''
        f = open(filename,"r+", encoding="utf-8") # rewrite the file
        f.write(content) 
        f.close()

        os.system("dot -Tpng " + filename + " -o graphviz_graph.png")

        self.img.reload()

        os.chdir('..')  
      

    def undo_output_parameter(self, instance):
        os.chdir('dags')
        
        filename = self.dot_file_name.text + ".dot" 
        
        if os.path.isfile(filename):    #if new dot file, write the basic content
            f = open(filename,"r+", encoding="utf-8")
            content=f.read()
            if content.rfind('\n    {\n        graph [graph_name=') > content.rfind('\n    subgraph '):
                content=content[:content.rfind('\n    {\n        graph [graph_name=') or content.rfind('\n    subgraph ')]
                content += "\n}"
            elif content.rfind('\n    {\n        graph [graph_name=') < content.rfind('\n    subgraph '):
                content=content[:content.rfind('\n    subgraph ')]
                content += "\n}"
            f.close()

            with open(filename, 'r+') as f:   #empty file
                f.truncate(0)

            f = open(filename,"r+", encoding="utf-8") # rewrite the file
            f.write(content)
            f.close()
            os.system("dot -Tpng " + filename + " -o graphviz_graph.png")
            self.img.reload()
        else:
            print("No such file in directory!")
        
        os.chdir('..')

        
class EditDotWindow2(Screen):
    def __init__(self, **kwargs):
        super(EditDotWindow2, self).__init__(**kwargs)
        Layout = BoxLayout(orientation = 'vertical')
        Layout.add_widget(Label(text='Causcumber', size_hint=(1, 0.1)))
        
        displayLayout = GridLayout(cols=2,  width="600dp")

        resultLayout = GridLayout(cols=1,  width="600dp")
        resultLayout.add_widget(Label(text='Graphviz', size_hint=(1, 0.1)))# Title
        os.chdir('dags')
        img_viewer = BoxLayout(orientation = 'vertical')
        self.img=Image(source='graphviz_graph.png')
        self.img.allow_stretch = False
        self.img.keep_ratio = True
        self.img.size_hint_x = 1
        self.img.size_hint_y = 1
        img_viewer.add_widget(self.img)

        view_img_btn = Button(text='view graph', size_hint=(1, 0.08)) # view graphviz in another window
        view_img_btn.bind(on_press = self.view_graph)
        img_viewer.add_widget(view_img_btn) 

        displayLayout.add_widget(resultLayout) 

        resultLayout.add_widget(img_viewer) 
        os.chdir('..')
    
        self.inputLayout = BoxLayout(orientation = 'vertical')

        self.inputLayout.add_widget(Label(text='Enter file name', size_hint=(1, 0.1))) # Title
        self.dot_file_name = TextInput(text='', size_hint=(1, 0.05), multiline=False) 
        self.inputLayout.add_widget(self.dot_file_name)

        self.startBtn = Button(text='Update parameter relationship', size_hint=(1, 0.05))
        self.startBtn.bind(on_press = self.update_parameter_list)
        self.inputLayout.add_widget(self.startBtn) 

        self.dropdownbutton = Button(text='Select parameters', size_hint=(1, 0.05))
        self.inputLayout.add_widget(self.dropdownbutton)
        self.dropdown = DropDown()
        self.dropdownbutton.bind(on_release=self.dropdown.open)

        self.parameter_section = ScrollView(size_hint=(1, 1))
        self.output_parameters = GridLayout(cols=2,  width="600dp")
        self.parameter_section.add_widget(self.output_parameters)
        
        self.inputLayout.add_widget(self.parameter_section)

        displayLayout.add_widget(self.inputLayout) 

        Layout.add_widget(displayLayout)         

        self.returnBtn = Button(text='Back', size_hint=(1, 0.1))
        self.returnBtn.bind(on_press = self.screen_transition)
        Layout.add_widget(self.returnBtn)    
 
        self.add_widget(Layout)

    def update_parameter_list(self, instance):
        self.output_parameter_list = []
        

        os.chdir('dags')
        filename = self.dot_file_name.text + ".dot" 
        parameter_filter = ["digraph", "rankdir", "{", "}", "graph [", "label", "]", "subgraph", "->"]
        
        self.dropdown.clear_widgets()
        self.output_parameters.clear_widgets()

        if os.path.isfile(filename):    #if new dot file, write the basic content           
            f = open(filename,"r+", encoding="utf-8")
            content = f.read().split("\n")
            for line in content:
                if not any(filter in line for filter in parameter_filter):
                    self.output_parameter_list.append(line)          
            
            

            for x in range(len(self.output_parameter_list)):
                globals()[f"self.parameter_btn{x}"] = Button(text=self.output_parameter_list[x].strip(), size_hint_y=None, height=44)
                globals()[f"self.parameter_btn{x}"].bind(on_release=self.edit_relationship)
                self.dropdown.add_widget(globals()[f"self.parameter_btn{x}"])

                globals()[f"self.output_parameter{x}"] = Label(text=self.output_parameter_list[x], size_hint=(1, 1)) 
                self.output_parameters.add_widget(globals()[f"self.output_parameter{x}"])
                globals()[f"self.output_parameter_chk{x}"] = CheckBox(active  = True)
                self.output_parameters.add_widget(globals()[f"self.output_parameter_chk{x}"])

            os.system("dot -Tpng " + filename + " -o graphviz_graph.png")
            self.img.reload()
        else:
            print("No such file in directory!")

        os.chdir('..')

    def view_graph(self, instance):
        os.chdir('dags')
        os.startfile("graphviz_graph.png")
        os.chdir('..')

    def edit_relationship(self, instance):
        self.output_parameter_list = []

        os.chdir('dags')
        filename = self.dot_file_name.text + ".dot" 
        parameter_filter = ["digraph", "rankdir", "{", "}", "graph [", "label", "]", "subgraph", "->"]
        
        f = open(filename,"r+", encoding="utf-8")
        content = f.read()
        for line in content.split("\n"):
            if not any(filter in line for filter in parameter_filter):
                self.output_parameter_list.append(line)

        if content.rfind('}') > 0:
            content=content[:content.rfind('}')]
        
        f.close()

        with open(filename, 'r+') as f:   #empty file
            f.truncate(0)

        for x in range(len(self.output_parameter_list)):
            if globals()[f"self.output_parameter_chk{x}"].active == True:
                content += "    " + instance.text.replace(';', '') + "->" + self.output_parameter_list[x].strip() + "\n"
        
        content += "}"
        f = open(filename,"r+", encoding="utf-8") # rewrite the file
        f.write(content)
        f.close()
        os.system("dot -Tpng " + filename + " -o graphviz_graph.png")
        self.img.reload()

        os.chdir('..')  
 
    def screen_transition(self, instance):
        for file in os.listdir('dags'):
            os.chdir('dags')
            if file.endswith('.png'):
                os.remove(file)
            os.chdir('..') 
        self.img.reload()

        self.output_parameter_list = []

        os.chdir('dags')
        filename = self.dot_file_name.text + ".dot" 
        parameter_filter = ["digraph", "rankdir", "{", "}", "graph [", "label", "]", "subgraph", "->"]
        
        f = open(filename,"r+", encoding="utf-8")
        content = f.read().split("\n")
        for line in content:
            if not any(filter in line for filter in parameter_filter):
                self.output_parameter_list.append(line)          

        for x in range(len(self.output_parameter_list)):
            self.dropdown.clear_widgets()
            self.output_parameters.clear_widgets()
        
        os.chdir('..')

        self.dot_file_name.text = ''
        self.manager.current = 'Main'


class Application(App):
    def build(self):

        Window.bind(on_request_close=self.on_request_close)

        sm = ScreenManagement(transition=FadeTransition())
        sm.add_widget(MainWindow(name='Main'))
        sm.add_widget(EditDotWindow1(name='edit dot1'))  
        sm.add_widget(EditDotWindow2(name='edit dot2'))      
        return sm

    def on_request_close(self, instance):  #remove results.json and other feature file created when closing the program                  
        for file in os.listdir('dags'):
            os.chdir('dags')      
            if file.endswith('.png'):
                os.remove(file)                   
            os.chdir('..')
        os.chdir('reports')
        global created_file_xml, created_file_feature
        for created_file_xml in created_file_xml:
            os.remove(created_file_xml)
        os.chdir('..')
        os.chdir('features')
        for created_file_feature in created_file_feature:
            os.remove(created_file_feature)
        os.chdir('..')
        print("Closing")

if __name__ == "__main__":
    Application().run()