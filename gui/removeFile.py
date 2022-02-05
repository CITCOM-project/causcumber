import os

created_file_feature = []
created_file_xml = []
current_file = ""

def remove_file():
    global created_file_xml, created_file_feature
    for file in os.listdir('dags'):
        os.chdir('dags')      
        if file.endswith('.png'):
            os.remove(file)                   
        os.chdir('..')
    os.chdir('reports')
    for created_file_xml in created_file_xml:
        os.remove(created_file_xml)
    os.chdir('..')
    os.chdir('features')
    for created_file_feature in created_file_feature:
        os.remove(created_file_feature)
    os.chdir('..')