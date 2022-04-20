from audioop import add
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
from kivy.uix.dropdown import DropDown
from kivy.uix.scrollview import ScrollView
from kivy.lang import Builder
from gui.mainWindow import displayResult
import gui.editFeatureVariable
##################

class EditFeatureWindow3(Screen):
    def __init__(self, **kwargs):
        super(EditFeatureWindow3, self).__init__(**kwargs)
        Layout = BoxLayout(orientation = 'vertical')
        Layout.add_widget(Label(text='Causcumber', size_hint=(1, 0.1)))

        displayLayout = GridLayout(cols=2,  width="600dp")

        self.resultLayout = BoxLayout(orientation = 'vertical')
        self.resultLayout.add_widget(Label(text='Scenario', size_hint=(1, 0.1)))# Title
        self.display_result = displayResult(text='') # Display result
        self.resultLayout.add_widget(self.display_result) 
        
        
        displayLayout.add_widget(self.resultLayout) 

        self.inputLayout = BoxLayout(orientation = 'vertical') 

        self.inputLayout.add_widget(Label(text='Edit scenarios', size_hint=(1, 0.1))) # Title 
        
        self.tagLayout = GridLayout(cols=2, size_hint=(1, 0.06))
        self.tagLayout.add_widget(Label(text='Scenario tag: ', size_hint=(1, 0.1)))
        self.tagText = TextInput(text='', size_hint=(1, 0.15), multiline=False) 
        self.tagLayout.add_widget(self.tagText)
        self.inputLayout.add_widget(self.tagLayout)

        self.outlineLayout = GridLayout(cols=2, size_hint=(1, 0.06))
        self.outlineLayout.add_widget(Label(text='Scenario Outline: ', size_hint=(1, 0.1)))
        self.outlineText = TextInput(text='', size_hint=(1, 0.15), multiline=False) 
        self.outlineLayout.add_widget(self.outlineText)
        self.inputLayout.add_widget(self.outlineLayout)

        self.givenLayout = GridLayout(cols=2, size_hint=(1, 0.06))
        self.givenLayout.add_widget(Label(text='Given we run the model with ', size_hint=(1, 0.1)))
        self.givenText = TextInput(text='', size_hint=(1, 0.15), multiline=False) 
        self.givenLayout.add_widget(self.givenText)
        self.inputLayout.add_widget(self.givenLayout)

        self.whenLayout = GridLayout(cols=2, size_hint=(1, 0.06))
        self.whenLayout.add_widget(Label(text='When we run the model with ', size_hint=(1, 0.1)))
        self.whenText = TextInput(text='', size_hint=(1, 0.15), multiline=False)
        self.whenLayout.add_widget(self.whenText)
        self.inputLayout.add_widget(self.whenLayout)

        thenLayout = GridLayout(cols=4, size_hint=(1, 0.06))
        thenLayout.add_widget(Label(text='Then the ', size_hint=(1, 0.1))) 
        self.thenText = TextInput(text='', size_hint=(1, 0.11), multiline=False) 
        thenLayout.add_widget(self.thenText)
        
        thenLayout.add_widget(Label(text='should be ', size_hint=(1, 0.1))) 
        self.shouldText = TextInput(text='', size_hint=(1, 0.1), multiline=False) 
        thenLayout.add_widget(self.shouldText)

        self.inputLayout.add_widget(thenLayout)

        self.inputLayout.add_widget(Label(text='Examples: ', size_hint=(1, 0.1)))
        
        self.exampleLayout = GridLayout(cols=1, size_hint_y=None)
        self.exampleLayout.bind(minimum_height=self.exampleLayout.setter("height"))

        self.dropdownbutton = Button(text='Select column amount: '+str(self.exampleLayout.cols), size_hint=(1, 0.05))
        self.inputLayout.add_widget(self.dropdownbutton)
        self.dropdown = DropDown()
        self.dropdownbutton.bind(on_release=self.dropdown.open)

        for x in range(1, 6):
            globals()[f"self.column_num_btn{x}"] = Button(text=str(x), size_hint_y=None, height=44)
            globals()[f"self.column_num_btn{x}"].bind(on_release=self.change_column_num)
            self.dropdown.add_widget(globals()[f"self.column_num_btn{x}"])

        self.scrollview = ScrollView(size_hint=(1, 0.3),pos_hint={'center_y': 0.5, 'center_x': 0.5})
        self.scrollview.add_widget(self.exampleLayout)
        self.inputLayout.add_widget(self.scrollview)

        addRowButton = Button(text='Add row', size_hint=(1, 0.05))
        addRowButton.bind(on_press = self.add_row)
        self.inputLayout.add_widget(addRowButton)
        addRowButton = Button(text='Remove row', size_hint=(1, 0.05))
        addRowButton.bind(on_press = self.remove_row)
        self.inputLayout.add_widget(addRowButton)
        
        self.save_output = Button(text='Add scenario outline', size_hint=(1, 0.05)) # save input as new feature file
        self.save_output.bind(on_press = self.add_new_scenario_outline)
        self.inputLayout.add_widget(self.save_output) 
        
        undoOutput = Button(text='undo scenario outline', size_hint=(1, 0.05)) # save input as new feature file
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

    def change_column_num(self, instance):
        self.exampleLayout.cols = int(instance.text)
        self.dropdownbutton.text = 'Select column amount: '+str(self.exampleLayout.cols)
        self.exampleLayout.clear_widgets()
        self.dropdown.dismiss()

    def add_row(self, instance):
        for x in range(self.exampleLayout.cols):
            self.exampleText = TextInput(text='', size_hint=(1, None), multiline=False)
            self.exampleLayout.add_widget(self.exampleText)

    def remove_row(self, instance):
        colCounter = 0
        for element in self.exampleLayout.children:
            self.exampleLayout.remove_widget(element)
            colCounter +=1
            if colCounter == self.exampleLayout.cols:
                break

    def screen_transition(self, instance):
        self.clear_screen()
        self.manager.current = 'Main'

    def next_step(self, instance):
        filename = gui.editFeatureVariable.targetFeatureFileName

        os.chdir('features')
        f = open(filename,"r+", encoding="utf-8")
        featureContent = f.read()
        f.close()

        with open(filename, 'r+') as f:   #empty file
            f.truncate(0)

        featureContent += self.display_result.text
        
        f = open(filename,"r+", encoding="utf-8")
        f.write(featureContent)
        f.close()
        os.chdir('..')

        self.clear_screen()

        self.manager.current = 'edit feature4'
    
    def add_new_scenario_outline(self, instance):
        if len(self.tagText.text) != 0 and len(self.outlineText.text) != 0:
            content = self.display_result.text
            content += '  @' + self.tagText.text +'\n  Scenario Outline: ' + self.outlineText.text 

            if len(self.givenText.text) != 0:
                content += '\n    Given we run the model with ' + self.givenText.text

            content += '\n    When we run the model with ' + self.whenText.text + '\n    Then the ' + self.thenText.text + ' should be ' + self.shouldText.text 

            elementList = []
            for elements in self.exampleLayout.children:
                elementList.append(elements.text)
            
            if len(elementList) != 0:
                content += '\n    Examples:\n      '
                elementList.reverse()
                colCounter = 0   
                for x in elementList:           
                    content += '| ' + x
                    colCounter += 1
                    if colCounter == self.exampleLayout.cols:
                        content +=' |\n      '
                        colCounter = 0
            
            content+='\n'

            self.clear_screen()

            self.display_result.text = content
        else:
            print("missing info")

    def undo_output_parameter(self, instance):
        self.display_result.text=self.display_result.text[:self.display_result.text.rfind('  @')]

    def clear_screen(self):
        self.exampleLayout.cols = 1
        self.dropdownbutton.text = 'Select column amount: '+str(self.exampleLayout.cols)
        self.display_result.text = ''
        self.tagText.text = ''
        self.outlineText.text = ''
        self.givenText.text = ''
        self.whenText.text = ''
        self.thenText.text = ''
        self.shouldText.text = ''
        self.exampleLayout.clear_widgets()