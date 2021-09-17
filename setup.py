from setuptools import setup, find_packages

setup(
    name='causcumber',
    version='0.0.1',
    url='https://github.com/CITCOM-project/causcumber',
    author='causcumber Team',
    packages=find_packages(),
    install_requires=['dowhy',
                      'numpy',
                      'pandas',
                      'pydot',
                      'pygraphviz',
                      'rpy2']
)