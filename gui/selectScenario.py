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

class SelectScenario(Screen):
    def __init__(self, **kwargs):
        super(SelectScenario, self).__init__(**kwargs) 
        
        layout = FloatLayout()
        button = Button(text='Hello world',size_hint=(.1, .1),pos=(500, 400))
        button.bind(on_press=self.screen_transition)
        layout.add_widget(button)

        self.add_widget(layout)
    
    def screen_transition(self, *args):
        self.manager.current = 'Main'