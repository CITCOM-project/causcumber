# basic-end2end

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

```
behave features/test-trace.feature
```
