from kivy.app import App
from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.button import Button
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput
from kivy.uix.scrollview import ScrollView
from kivy.lang import Builder
from kivy.properties import StringProperty
from kivy.core.window import Window

import os
import json
from kivy.config import Config
Config.set('graphics', 'width', '1200')
Config.set('graphics', 'height', '700')
Config.write()

Builder.load_string('''
<ScrolllabelLabel>:
    Label:
        text: root.text
        font_size: 15
        text_size: self.width, None
        size_hint_y: None
        height: self.texture_size[1]

''')


class ScrolllabelLabel(ScrollView):
    text = StringProperty('')

class main(App):

    created_file = []

    def __init__(self,**kwargs):
        super(main,self).__init__(**kwargs)
        os.chdir('compare_interventions')
        os.system('behave features/compare_interventions.feature --format json --outfile results.json')

    def build(self):

        Window.bind(on_request_close=self.on_request_close)
        
        Layout = BoxLayout(orientation = 'vertical')
        banner = Label(text='Causcumber', size_hint=(1, 0.1))
        Layout.add_widget(banner)

        displayLayout = GridLayout(cols=2,  width="600dp")

        resultLayout = GridLayout(cols=1,  width="600dp")
        self.placeholder = Label(text='placeholder', size_hint=(1, 0.1)) # Choose feature file to run
        resultLayout.add_widget(self.placeholder) 
        self.Result = Label(text='Result', size_hint=(1, 0.1)) # Title
        resultLayout.add_widget(self.Result)
        self.display_result = ScrolllabelLabel(text='') # Display result
        resultLayout.add_widget(self.display_result)    
        displayLayout.add_widget(resultLayout) 

        inputLayout = GridLayout(cols=1,  width="600dp")
        self.choose_input_title = Label(text='Choose different input', size_hint=(1, 0.1)) # Title
        inputLayout.add_widget(self.choose_input_title) 
        self.paremeter1 = Label(text='Parameter 1', size_hint=(1, 0.1)) #modify parameter 1
        inputLayout.add_widget(self.paremeter1) 
        self.input1 = TextInput(text='', size_hint=(1, 1.0), multiline=False) 
        inputLayout.add_widget(self.input1)
        self.paremeter2 = Label(text='Parameter 2', size_hint=(1, 0.1)) #modify parameter 2
        inputLayout.add_widget(self.paremeter2) 
        self.input2 = TextInput(text='', size_hint=(1, 1.0), multiline=False) 
        inputLayout.add_widget(self.input2)   
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
        json_file = open("results.json")
        outputs = json.load(json_file)
        json_file.close()      
        
        # Convert json to string
        data = json.dumps(outputs)
        result = data
        split_data = data.split()
        result = ""
        word_count = 0
        for split_data in split_data:
            result += split_data + " "
            word_count += 1
            if word_count == 6 or "." in split_data:
                result += "\n"
                word_count = 0

        self.display_result.text = result

    def save_file(self, instance):
        parameter_input1 = self.input1.text
        parameter_input2 = self.input2.text
        feature_file_name = "compare_" + parameter_input1 + "_" + parameter_input2 + ".feature"    #generate file name based on input
        self.created_file.append(feature_file_name)
        os.chdir('features')
        f = open(feature_file_name, "a")                                                           #generate feature file with input file name
        f.write(parameter_input1 + parameter_input2)
        f.close()
        os.chdir('..')
    
    def on_request_close(self, instance):  #remove results.json and other feature file created when closing the program
        os.remove("results.json")
        os.chdir('features')
        for self.created_file in self.created_file:
            os.remove(self.created_file)
        os.chdir('..')
        print("Closing")

main().run()