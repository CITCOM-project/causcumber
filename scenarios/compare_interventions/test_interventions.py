import unittest
import os
from behave.parser import parse_file

class TestCompareInterventions(unittest.TestCase):

    def test_large_population(self):
        feature = parse_file("features/compare_interventions.feature")
        res = os.system(f'behave --include features/compare_interventions.feature -f null --logging-level CRITICAL')
        self.assertEqual(res, 0)

if __name__ == '__main__':
    unittest.main()
