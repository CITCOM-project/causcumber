from re import L, template
from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.checkbox import CheckBox
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.screenmanager import Screen
import os
from kivy.uix.image import Image
##################

class EditFeatureWindow3(Screen):
    def __init__(self, **kwargs):
        super(EditFeatureWindow3, self).__init__(**kwargs)
        Layout = BoxLayout(orientation = 'vertical')
        Layout.add_widget(Label(text='Causcumber', size_hint=(1, 0.1)))

        displayLayout = GridLayout(cols=2,  width="600dp")

        self.resultLayout = BoxLayout(orientation = 'vertical')
        self.resultLayout.add_widget(Label(text='Graphviz', size_hint=(1, 0.1)))# Title
    
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
        
        self.manager.current = 'edit dot2'
    
    def add_new_graph(self, instance):
        os.chdir('dags')
        filename = self.dot_file_name.text + ".dot" 
        
        if os.path.isfile(filename):    #if new dot file, write the basic content
            f = open(filename,"r+", encoding="utf-8")           
            if """digraph "" {\n    graph [newrank=True,\n        rankdir=LR\n    ];""" not in f.read():
                f.write("""digraph "" {\n    graph [newrank=True,\n        rankdir=LR\n    ];\n}""")
        else:
            f = open(filename,"a")
            f.write("""digraph "" {\n    graph [newrank=True,\n        rankdir=LR\n    ];\n}""")
        f.close()
            
        f = open(filename,"r+", encoding="utf-8")
        content = ""
        for line in f.read().split("\n"):
            if "->" not in line:
                content += line
                content += "\n"

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
        
        content += "\n    }"

        content += "\n}"
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