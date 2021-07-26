# Compare Interventions

Comparing the effects of testing/tracing interventions in covasim. Feature files describe scenarios in terms of treatments and expected outcomes. Step files determine how to interpret the steps of each scenario. Causal DAGs are drawn by a pseudo scenario which draws the connected unit and then repeats it for as many steps as necessary (if any).

## Setup
Create a conda environment e.g.:

```
conda create --force -y -n causcumber python=3.8
```

install requirements:
Note: These probably want updating. I (MF) have no idea how to do this!
```
conda install -c conda-forge pygraphviz
pip install -r requirements.txt
```

## Basic end to end example
```
behave features/compare_interventions_basic.feature
```
This feature considers the effects of the different interventions on the _final_ outcome as reported at the end of model execution. There is little opportunity for confounding here, though, since we usually want to test the impact of inputs on outputs. Inputs are generally independent of each other, so there are no common causes. In such cases, causal inference reduces to classical estimation.

## Considering time steps
```
behave features/compare_interventions.feature
```
This feature has the exact same scenarios as above, but uses a different causal DAG which explicitly considers the output values at different time points in the model. Covasim reports values daily, but we here aggregate to weekly to reduce the size of the graph a bit while still being able to run the model for long enough to get decent results out. We can now investigate the effects of infections _in a given week_ on subsequent deaths. Here, there is confounding since infections and deaths share common causes which need to be adjusted for.

## Start dates
```
behave features/test_start_date.feature # This demonstrates a flaw in the model so will fail
```
This feature tests how covasim responds to seasonal variations. In short, it doesn't. The time of year the model is run at makes no difference to any output. It is simply an alternative way of specifying the number of days to run the model for.
