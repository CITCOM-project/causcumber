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
import gui.editFeatureVariable
##################

class EditFeatureWindow1(Screen):
    def __init__(self, **kwargs):
        super(EditFeatureWindow1, self).__init__(**kwargs)
        Layout = BoxLayout(orientation = 'vertical')
        Layout.add_widget(Label(text='Causcumber', size_hint=(1, 0.1)))

        displayLayout = GridLayout(cols=1,  width="600dp")

        self.inputLayout = BoxLayout(orientation = 'vertical')
        
        self.inputLayout.add_widget(Label(text='Enter file name', size_hint=(1, 0.1))) # Title
        self.feature_file_name = TextInput(text='', size_hint=(1, 0.11), multiline=False) 
        self.inputLayout.add_widget(self.feature_file_name)
        

        self.inputLayout.add_widget(Label(text='Edit background', size_hint=(1, 0.1))) # Title 

        self.inputLayout.add_widget(Label(text='Given a simulation with parameters', size_hint=(1, 0.1)))

        givenLayout = GridLayout(cols=3,  width="600dp")

        parameterLayout = BoxLayout(orientation = 'vertical')
        self.column1Name = TextInput(text='parameter', size_hint=(1, 0.1), multiline=False) 
        parameterLayout.add_widget(self.column1Name)
        self.column1Value = TextInput(text='', size_hint=(1, 0.7), multiline=True) 
        parameterLayout.add_widget(self.column1Value)

        valueLayout = BoxLayout(orientation = 'vertical')
        self.column2Name = TextInput(text='value', size_hint=(1, 0.1), multiline=False)
        valueLayout.add_widget(self.column2Name) 
        self.column2Value = TextInput(text='', size_hint=(1, 0.7), multiline=True) 
        valueLayout.add_widget(self.column2Value)

        typeLayout = BoxLayout(orientation = 'vertical')
        self.column3Name = TextInput(text='type', size_hint=(1, 0.1), multiline=False)
        typeLayout.add_widget(self.column3Name)
        self.column3Value = TextInput(text='', size_hint=(1, 0.7), multiline=True) 
        typeLayout.add_widget(self.column3Value)

        givenLayout.add_widget(parameterLayout)
        givenLayout.add_widget(valueLayout)
        givenLayout.add_widget(typeLayout)
        self.inputLayout.add_widget(givenLayout)

        andLayout = GridLayout(cols=2,  width="600dp")

        andLayout.add_widget(Label(text='And the following variables are recorded ', size_hint=(1, 0.1))) 
        self.recordMode = TextInput(text='', size_hint=(1, 0.11), multiline=False) 
        andLayout.add_widget(self.recordMode)

        variableLayout = BoxLayout(orientation = 'vertical')
        variableLayout.add_widget(Label(text='variable', size_hint=(1, 0.1)))
        self.variableName = TextInput(text='', size_hint=(1, 0.7), multiline=True) 
        variableLayout.add_widget(self.variableName)

        variableTypeLayout = BoxLayout(orientation = 'vertical')
        variableTypeLayout.add_widget(Label(text='type', size_hint=(1, 0.1)))
        self.variableType = TextInput(text='', size_hint=(1, 0.7), multiline=True) 
        variableTypeLayout.add_widget(self.variableType)

        andLayout.add_widget(variableLayout)
        andLayout.add_widget(variableTypeLayout)
        self.inputLayout.add_widget(andLayout)

        displayLayout.add_widget(self.inputLayout)

        Layout.add_widget(displayLayout)

        self.nextBtn = Button(text='Next', size_hint=(1, 0.1))
        self.nextBtn.bind(on_press = self.next_step)
        Layout.add_widget(self.nextBtn)  

        self.returnBtn = Button(text='Back', size_hint=(1, 0.1))
        self.returnBtn.bind(on_press = self.screen_transition)
        Layout.add_widget(self.returnBtn)    
 
        self.add_widget(Layout)    

    def next_step(self, instance):
        gui.editFeatureVariable.targetFeatureFileName = '' 
        gui.editFeatureVariable.parameterNames = []

        split_parameterName = self.column1Value.text.split()    #parameter
        final_parameterName = []
        for x in split_parameterName:
            x = x.replace('\n', '')
            x = x.replace(';', '')
            final_parameterName.append(x)
            gui.editFeatureVariable.parameterNames.append(x)

        split_parameterValue = self.column2Value.text.split()  #value
        final_parameterValue = []
        for x in split_parameterValue:
            x = x.replace('\n', '')
            x = x.replace(';', '')
            final_parameterValue.append(x)

        split_parameterType = self.column3Value.text.split()  #type
        final_parameterType = []
        for x in split_parameterType:
            x = x.replace('\n', '')
            x = x.replace(';', '')
            final_parameterType.append(x)

        split_variableName = self.variableName.text.split()    #variable name
        final_variableName = []
        for x in split_variableName:
            x = x.replace('\n', '')
            x = x.replace(';', '')
            final_variableName.append(x)
            gui.editFeatureVariable.parameterNames.append(x)

        split_variableType = self.variableType.text.split()    #variable type
        final_variableType = []
        for x in split_variableType:
            x = x.replace('\n', '')
            x = x.replace(';', '')
            final_variableType.append(x)

        if len(final_parameterName) == len(final_parameterValue) and len(final_parameterName) == len(final_parameterType):
            content = "Feature: Compare " + self.feature_file_name.text + "\n  Background: IO spec\n    Given a simulation with parameters\n      | " + self.column1Name.text + "     | " + self.column2Name.text + "      | " + self.column3Name.text + " |\n"
            for x in range(len(final_parameterName)):
                content += "      | " + final_parameterName[x] + "  | " + final_parameterValue[x] + "  | " + final_parameterType[x] + "  |\n"
            content += "    And the following variables are recorded " + self.recordMode.text + "\n" + "      | variable          | type |\n"
            for x in range(len(final_variableName)):
                content += "      | " + final_variableName[x] + "  | " + final_variableType[x] + "  |\n"
            
            filename = "compare_" + self.feature_file_name.text+ ".feature"
            gui.editFeatureVariable.targetFeatureFileName = filename
            os.chdir('features')
            f = open(filename, "w")
            f.write(content)
            f.close()
            os.chdir('..')

            self.clean_screen()

            self.manager.current = 'edit feature2' 
        else:
            print("missing data")
            
    def screen_transition(self, instance):
        self.clean_screen()

        self.manager.current = 'Main'

    def clean_screen(self):
        self.feature_file_name.text = ''
        self.column1Name.text = ''
        self.column1Value.text = ''
        self.column2Name.text = ''
        self.column2Value.text = ''
        self.column3Name.text = ''
        self.column3Value.text = ''
        self.recordMode.text = ''
        self.variableName.text = ''
        self.variableType.text = ''