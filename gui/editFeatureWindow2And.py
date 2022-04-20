from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.checkbox import CheckBox
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.scrollview import ScrollView
from kivy.uix.screenmanager import Screen

import os
import os.path
from os import path
import re

from kivy.uix.image import Image
from kivy.uix.dropdown import DropDown
import gui.editFeatureVariable
##################

class EditFeatureWindow2And(Screen):
    def __init__(self, **kwargs):
        super(EditFeatureWindow2And, self).__init__(**kwargs)
        Layout = BoxLayout(orientation = 'vertical')
        Layout.add_widget(Label(text='Causcumber', size_hint=(1, 0.1)))
        
        displayLayout = GridLayout(cols=2,  width="600dp")

        resultLayout = GridLayout(cols=1,  width="600dp")
        resultLayout.add_widget(Label(text='Graphviz', size_hint=(1, 0.1)))# Title

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
    
        self.inputLayout = BoxLayout(orientation = 'vertical')

        self.inputLayout.add_widget(Label(text='And we add the following edges', size_hint=(1, 0.1))) 


        self.startBtn = Button(text='Update edges', size_hint=(1, 0.1))
        self.startBtn.bind(on_press = self.update_parameter_list)
        self.inputLayout.add_widget(self.startBtn) 

        self.dropdownbutton = Button(text='Select parameters', size_hint=(1, 0.1))
        self.inputLayout.add_widget(self.dropdownbutton)
        self.dropdown = DropDown()
        self.dropdownbutton.bind(on_release=self.dropdown.open)
    
        self.parameter_section = ScrollView(size_hint=(1, 1))
        self.output_parameters = GridLayout(cols=2,  width="600dp")
        self.parameter_section.add_widget(self.output_parameters)
        
        self.inputLayout.add_widget(self.parameter_section)

        displayLayout.add_widget(self.inputLayout) 

        Layout.add_widget(displayLayout)         

        self.nextBtn = Button(text='Next', size_hint=(1, 0.1))
        self.nextBtn.bind(on_press = self.next_step)
        Layout.add_widget(self.nextBtn)  

        self.returnBtn = Button(text='Back', size_hint=(1, 0.1))
        self.returnBtn.bind(on_press = self.screen_transition)
        Layout.add_widget(self.returnBtn)    
 
        self.add_widget(Layout)

    def update_parameter_list(self, instance):
        self.output_parameter_list = gui.editFeatureVariable.parameterNames
        
        self.dropdown.clear_widgets()
        self.output_parameters.clear_widgets()     

        f = open('temp.dot', "w")
        f.close()                            

        for x in range(len(self.output_parameter_list)):
            globals()[f"self.parameter_btn{x}"] = Button(text=self.output_parameter_list[x].strip(), size_hint_y=None, height=44)
            globals()[f"self.parameter_btn{x}"].bind(on_release=self.edit_relationship)
            self.dropdown.add_widget(globals()[f"self.parameter_btn{x}"])

            globals()[f"self.output_parameter{x}"] = Label(text=self.output_parameter_list[x], size_hint=(1, 1)) 
            self.output_parameters.add_widget(globals()[f"self.output_parameter{x}"])
            globals()[f"self.output_parameter_chk{x}"] = CheckBox(active  = True)
            self.output_parameters.add_widget(globals()[f"self.output_parameter_chk{x}"])

        self.output_parameter_star = Label(text=".*", size_hint=(1, 1)) 
        self.output_parameters.add_widget(self.output_parameter_star)
        self.output_parameter_star_chk = CheckBox(active  = True)
        self.output_parameters.add_widget(self.output_parameter_star_chk)

        os.system("dot -Tpng temp.dot -o graphviz_graph.png")
        self.img.reload()

    def view_graph(self, instance):
        os.startfile("graphviz_graph.png")
        
    def edit_relationship(self, instance):
        self.output_parameter_list = gui.editFeatureVariable.parameterNames

        f = open('temp.dot',"r+", encoding="utf-8")
        content = ''

        if os.stat("temp.dot").st_size == 0:
            content = 'digraph "" {\n	graph [newrank=True,\n		rankdir=LR\n	];\n'
        else:
            content = f.read()
            content = content[:content.rfind('\n')]
            content += "\n"


        for x in range(len(self.output_parameter_list)):
            if globals()[f"self.output_parameter_chk{x}"].active == True:
                content += "    " + instance.text.replace(';', '') + "->" + self.output_parameter_list[x].strip() + "\n"
        if self.output_parameter_star_chk.active ==True:
            content += "    " + instance.text.replace(';', '') + "->.*\n"
        
        content += "}"
        f.close()

        with open('temp.dot', 'r+') as f:   #empty file
            f.truncate(0)

        f = open('temp.dot',"r+", encoding="utf-8")
        f.write(content)
        f.close()
        os.system("dot -Tpng temp.dot -o graphviz_graph.png")
        self.img.reload()

    def next_step(self, instance):
        if path.exists("temp.dot"):
            f = open('temp.dot',"r+", encoding="utf-8")
            parameter_filter = ["digraph", "rankdir", "{", "}", "graph [", "label", "]", "subgraph"]
            s1List = []
            s2List = []
            content = f.read().split("\n")
            for line in content:
                if not any(filter in line for filter in parameter_filter):
                    splitLine = line.split("->")
                    s1List.append(splitLine[0].strip())
                    s2List.append(splitLine[1].strip())
            f.close()

            filename = gui.editFeatureVariable.targetFeatureFileName

            os.chdir('features')
            f = open(filename,"r+", encoding="utf-8")
            featureContent = f.read()
            f.close()

            with open(filename, 'r+') as f:   #empty file
                f.truncate(0)

            featureContent += "    And we add the following edges\n      | s1                | s2                 |\n"
            for x in range(len(s1List)):
                featureContent += "      | " + s1List[x] + " | " + s2List[x] + " | \n"
            
            featureContent += '    Then we obtain the causal DAG\n'
            featureContent += "\n"
            f = open(filename,"r+", encoding="utf-8")
            f.write(featureContent)
            f.close()
            os.chdir('..')

            for file in [f for f in os.listdir('.') if os.path.isfile(f)]:
                if file.endswith('.png'):
                    os.remove(file)
                elif file == 'temp.dot':
                    os.remove(file)
            self.img.reload()

            self.output_parameter_list = []

            self.dropdown.clear_widgets()
            self.output_parameters.clear_widgets()

            self.manager.current = 'edit feature3'
        else:
            print("relation is not edited")


    def screen_transition(self, instance):
        for file in [f for f in os.listdir('.') if os.path.isfile(f)]:
            if file.endswith('.png'):
                os.remove(file)
            elif file == 'temp.dot':
                os.remove(file)
        self.img.reload()

        self.output_parameter_list = []

        self.dropdown.clear_widgets()
        self.output_parameters.clear_widgets()

        self.manager.current = 'Main'