""" Utility files for Behave. """
from collections import defaultdict

def table_to_dict(behave_table):
    """ Convert behave table to a dictionary. """
    keys = behave_table.headings
    values = behave_table.rows
    behave_dict = defaultdict(list)

    for value in values:
        for i, key in enumerate(keys):
            behave_dict[key].append(value[i])
    return behave_dict
