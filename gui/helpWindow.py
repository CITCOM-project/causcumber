helpinformation="""
Step one: 
Install the tested module in the environment or in the model folder provided

Step two:
Edit the run_[model name] function in feature/environment.py in order to exectue the tested model

Step three:
Edit the files feature/steps to process the parameters from the tested model

Custom Distributions                                          
User needs to define custom distrubutions for parameters. This is done in `dag_steps.py`.

Metavariables
User can also define metavariables in the Background. A metavariable called “m” needs a function “populate_m” in `dag_steps.py`.

Custom Constraints
Custom constraint need hook defining for them in abstract.py.

Step four:
Use the edit dot files function in the main screen to create a dot file that specify the relation between the varibles

Step five:
Use the edit feature files function in the main screen to creat a .feature that specify the scenarios the is tested
"""

