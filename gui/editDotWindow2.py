from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.checkbox import CheckBox
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.scrollview import ScrollView
from kivy.uix.screenmanager import Screen

import os

from kivy.uix.image import Image
from kivy.uix.dropdown import DropDown
##################

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
        
        if os.path.isfile(filename):
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