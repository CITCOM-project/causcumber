import pytest


class BehaveException(Exception):
    """Custom exception for error reporting."""

def pytest_collect_file(parent, path):
    """Allow .feature files to be parsed for bdd."""
    print("parent", parent)
    print("path", path)
    if path.ext == ".feature":
        return BehaveFile.from_parent(parent, fspath=path)

class BehaveFile(pytest.File):
    def collect(self):
        from behave.parser import parse_file
        feature = parse_file(self.fspath)
        for scenario in feature.walk_scenarios(with_outlines=True):
            yield BehaveFeature.from_parent(
                self,
                name=scenario.name,
                feature=feature,
                scenario=scenario,
            )


class BehaveFeature(pytest.Item):

    def __init__(self, name, parent, feature, scenario):
        super().__init__(name, parent)
        self._feature = feature
        self._scenario = scenario

    def runtest(self):
        import subprocess as sp
        from shlex import split

        feature_name = self._feature.filename
        cmd = split(f"""behave
            --format json
            --no-summary
            --include {feature_name}
            -n "{self._scenario.name}"
        """)

        try:
            proc = sp.run(cmd, stdout=sp.PIPE)
            if not proc.returncode:
                return
        except Exception as exc:
            raise BehaveException(self, f"exc={exc}, feature={feature_name}")

        stdout = proc.stdout.decode("utf8")
        raise BehaveException(self, stdout)

    def repr_failure(self, excinfo):
        """Called when self.runtest() raises an exception."""
        print("FAILURE")
        print(excinfo)
        return excinfo
        # import json
        # if isinstance(excinfo.value, BehaveException):
        #     feature = excinfo.value.args[0]._feature
        #     results = excinfo.value.args[1]
        #     data = json.loads(results)
        #     summary = ""
        #     for feature in data:
        #         if feature['status'] != "failed":
        #             continue
        #         summary += f"\nFeature: {feature['name']}"
        #         for element in feature["elements"]:
        #             if element['status'] != "failed":
        #                 continue
        #             summary += f"\n  {element['type'].title()}: {element['name']}"
        #             for step in element["steps"]:
        #                 try:
        #                     result = step['result']
        #                 except KeyError:
        #                     summary += f"\n    Step [NOT REACHED]: {step['name']}"
        #                     continue
        #                 status = result['status']
        #                 if status != "failed":
        #                     summary += f"\n    Step [OK]: {step['name']}"
        #                 else:
        #                     summary += f"\n    Step [ERR]: {step['name']}"
        #                     summary += "\n      " + "\n      ".join(result['error_message'])
        #
        #     return summary

    def reportinfo(self):
        return self.fspath, 0, f"Feature: {self._feature.name}  - Scenario: {self._scenario.name}"
