import os
import string

def read_parameter_file():
    text_file = open("input_parameters_list.txt", "r")
    lines = text_file.readlines()
    parameter_list = []
    for i in lines:
        i = i.replace(';', '')
        i = i.replace(' ', '')
        parameter_list.append(i.rstrip('\n'))
    text_file.close()
    #print (parameter_list)
    return parameter_list