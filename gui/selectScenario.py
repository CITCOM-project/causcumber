from re import L, template
import re
from turtle import onclick
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
from kivy.uix.screenmanager import ScreenManager, Screen

import os

class ScreenManagement(ScreenManager):
    def __init__(self, **kwargs):
        super(ScreenManagement, self).__init__(**kwargs)

class HomeScreen(Screen):
    def __init__(self, **kwargs):
        super(HomeScreen, self).__init__(**kwargs) 
        
        layout = FloatLayout()
        layout.add_widget(Label(text='Causcumber', font_size='70sp', size_hint=(1, 0.1),pos_hint={'center_y': 0.8, 'center_x': 0.5}))

        select_scenario_btn = Button(text='Select scenario',size_hint=(0.5, 0.1),pos_hint={'center_y': 0.5, 'center_x': 0.5})
        select_scenario_btn.bind(on_press=self.screen_transition1)
        layout.add_widget(select_scenario_btn)

        Create_new_scenario_btn = Button(text='Create new scenario',size_hint=(0.5, 0.1),pos_hint={'center_y': 0.3, 'center_x': 0.5})
        Create_new_scenario_btn.bind(on_press=self.screen_transition2)
        layout.add_widget(Create_new_scenario_btn)

        self.add_widget(layout)

    def screen_transition1(self, *args):
        self.manager.current = 'select scenario' 

    def screen_transition2(self, *args):
        self.manager.current = 'new scenario'

class SelectScenario(Screen):
    def __init__(self, **kwargs):
        super(SelectScenario, self).__init__(**kwargs) 
        layout = FloatLayout()
        self.button_area = BoxLayout(orientation = 'vertical',size_hint=(0.5, None),pos_hint={'center_y': 0.5, 'center_x': 0.5})
        layout.add_widget(self.button_area)
        self.list_scenarios()
        self.add_widget(layout)

    def list_scenarios(self):
        for item in os.listdir(path='.'):
            if "compare" in item:
                scenario_btn = Button(text=item)
                scenario_btn.bind(on_press=self.move_directory)
                self.button_area.add_widget(scenario_btn)
    
    def move_directory(self, instance):
        os.chdir(instance.text)
        self.manager.current = 'Main'

class NewScenario(Screen): 
    def __init__(self, **kwargs):
        super(NewScenario, self).__init__(**kwargs)
        layout = FloatLayout()

        input_area = BoxLayout(orientation = 'vertical',size_hint=(0.5, 0.5),pos_hint={'center_y': 0.5, 'center_x': 0.5})
        input_area.add_widget(Label(text='Enter compare variable', font_size='30sp',size_hint=(1, 0.2)))
        self.variable_name = TextInput(text='', font_size='20sp',size_hint=(1, 0.04), multiline=False)
        input_area.add_widget(self.variable_name)
        input_area.add_widget(Label(text='',size_hint=(1, 0.1)))
        create_scenario_btn = Button(text="Create scenario",size_hint=(1, 0.08))
        create_scenario_btn.bind(on_press=self.create_scenario)
        input_area.add_widget(create_scenario_btn)

        layout.add_widget(input_area)
        self.add_widget(layout)

    def create_scenario(self, instance):
        new_directory = "compare_" + self.variable_name.text
        current_dir = os.getcwd()
        
        path = os.path.join(current_dir, new_directory)
        
        os.mkdir(path)

        os.chdir(new_directory)

        basic_folders = ["dags","features","reports","results"]
        for folder_name in basic_folders:
            os.mkdir(os.path.join(path, folder_name))

        print(os.getcwd())
        self.manager.current = 'Main'
