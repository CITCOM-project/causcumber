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

class EditFeatureWindow4(Screen):
    def __init__(self, **kwargs):
        super(EditFeatureWindow4, self).__init__(**kwargs)
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
        self.outlineLayout.add_widget(Label(text='Scenario: ', size_hint=(1, 0.1)))
        self.outlineText = TextInput(text='', size_hint=(1, 0.15), multiline=False) 
        self.outlineLayout.add_widget(self.outlineText)
        self.inputLayout.add_widget(self.outlineLayout)

        self.givenLayout = GridLayout(cols=2, size_hint=(1, 0.06))
        self.givenLayout.add_widget(Label(text='Given ', size_hint=(1, 0.1)))
        self.givenText = TextInput(text='', size_hint=(1, 0.15), multiline=False) 
        self.givenLayout.add_widget(self.givenText)
        self.inputLayout.add_widget(self.givenLayout)

        self.whenLayout = GridLayout(cols=2, size_hint=(1, 0.06))
        self.whenLayout.add_widget(Label(text='When ', size_hint=(1, 0.1)))
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
        
        self.andsLayout = GridLayout(cols=1, size_hint_y=None)
        self.andsLayout.bind(minimum_height=self.andsLayout.setter("height"))

        self.scrollview = ScrollView(size_hint=(1, 0.3),pos_hint={'center_y': 0.5, 'center_x': 0.5})
        self.scrollview.add_widget(self.andsLayout)
        self.inputLayout.add_widget(self.scrollview)

        addRowButton = Button(text='Add "And"', size_hint=(1, 0.05))
        addRowButton.bind(on_press = self.add_row)
        self.inputLayout.add_widget(addRowButton)
        addRowButton = Button(text='Remove "And"', size_hint=(1, 0.05))
        addRowButton.bind(on_press = self.remove_row)
        self.inputLayout.add_widget(addRowButton)
        
        self.save_output = Button(text='Add scenario ', size_hint=(1, 0.05)) # save input as new feature file
        self.save_output.bind(on_press = self.add_new_scenario_outline)
        self.inputLayout.add_widget(self.save_output) 
        
        undoOutput = Button(text='undo scenario ', size_hint=(1, 0.05)) # save input as new feature file
        undoOutput.bind(on_press = self.undo_output_parameter)
        self.inputLayout.add_widget(undoOutput)  

        displayLayout.add_widget(self.inputLayout)

        Layout.add_widget(displayLayout)

        self.nextBtn = Button(text='Finish', size_hint=(1, 0.1))
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

    def add_row(self, instance):

        self.andLayout = GridLayout(cols=4, size_hint_y=None)

        self.temp = Label(text='And the ', size_hint=(1, None))
        self.andLayout.add_widget(self.temp) 
        self.andText = TextInput(text='', size_hint=(1, None), multiline=False) 
        self.andLayout.add_widget(self.andText)
        
        self.temp = Label(text='should be ', size_hint=(1, None))
        self.andLayout.add_widget(self.temp) 
        self.andShouldText = TextInput(text='', size_hint=(1, None), multiline=False) 
        self.andLayout.add_widget(self.andShouldText)

        self.andsLayout.add_widget(self.andLayout)


    def remove_row(self, instance):
        colCounter = 0
        for element in self.andsLayout.children:
            if colCounter == 1:
                break            
            self.andsLayout.remove_widget(element)
            colCounter +=1       

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

        self.manager.current = 'Main'
    
    def add_new_scenario_outline(self, instance):
        if len(self.tagText.text) != 0 and len(self.outlineText.text) != 0:
            content = self.display_result.text
            content += '  @' + self.tagText.text +'\n  Scenario: ' + self.outlineText.text 

            if len(self.givenText.text) != 0:
                content += '\n    Given ' + self.givenText.text
                
            content += '\n    When ' + self.whenText.text + '\n    Then the ' + self.thenText.text + ' should be ' + self.shouldText.text + '\n' 

            elementList = []
            for element in self.andsLayout.children:
                for item in element.children:
                    if item.text != 'And the ' and item.text != 'should be ':
                        elementList.append(item.text)
            
            elementList.reverse()
            for x in range(0,len(elementList),2): 
                content += '    And the ' + elementList[x] + ' should be ' + elementList[x+1] + '\n'         
            content+='\n'

            self.clear_screen()

            self.display_result.text = content
        else:
            print("missing info")

    def undo_output_parameter(self, instance):
        self.display_result.text=self.display_result.text[:self.display_result.text.rfind('  @')]

    def clear_screen(self):
        self.display_result.text = ''
        self.tagText.text = ''
        self.outlineText.text = ''
        self.givenText.text = ''
        self.whenText.text = ''
        self.thenText.text = ''
        self.shouldText.text = ''
        self.andsLayout.clear_widgets()