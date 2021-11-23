from behave import fixture, use_fixture
from causcumber.causcumber_utils import to_snake_case


@fixture
def set_desired_outputs(context):
    """ Add a results dataframe which stores simulation outputs to context. """
    context.outputs = set()


@fixture
def set_parameters_dict(context):
    """ Add a parameters dictionary which stores simulation parameters to context."""
    context.params_dict = {}
    context.types = {}


def before_feature(context, feature):
    print(f"Running Feature `{feature.name}`")
    use_fixture(set_parameters_dict, context)
    use_fixture(set_desired_outputs, context)
    context.feature_name = to_snake_case(context.feature.name)
    context.dag_path = f"dags/{context.feature_name}.dot"
    context.results_dir = f"results/{context.feature_name}"
    context.abstract_tests = []
    context.inputs = set()
    context.meta_variables = set()
    context.constraints = {}
    context.background_constraints = set()


def before_scenario(context, scenario):
    context.effect_modifiers = {}
