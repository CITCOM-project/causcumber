from causal_testing.testing.causal_test_case import CausalTestCase
from causal_testing.testing.causal_test_outcome import Positive, Negative, NoEffect
from causal_testing.specification.causal_specification import CausalSpecification
from causal_testing.specification.causal_dag import CausalDAG
from causal_testing.data_collection.data_collector import ObservationalDataCollector
from causal_testing.testing.causal_test_engine import CausalTestEngine
from causal_testing.testing.estimators import LinearRegressionEstimator

from behave import use_step_matcher


@given(u'we run the model with {treatment_var}={control_val}')
def step_impl(context, treatment_var, control_val):
    context.control_input_configuration={
            context.scenario.modelling_scenario.variables[treatment_var]: context.scenario.modelling_scenario.variables[treatment_var].cast(control_val)
        }


@when(u'we run the model with {treatment_var}={treatment_val}')
def step_impl(context, treatment_var, treatment_val):
    context.treatment_input_configuration={
            context.scenario.modelling_scenario.variables[treatment_var]: context.scenario.modelling_scenario.variables[treatment_var].cast(treatment_val)
        }


effects = {">": Positive, "<": Negative, "=": NoEffect}


@then(u'the {outcome_var} should be {relationship} {control}')
def step_impl(context, outcome_var, relationship, control):
    causal_specification = CausalSpecification(scenario=context.scenario.modelling_scenario, causal_dag=CausalDAG(context.dag_path))
    causal_test_case = CausalTestCase(
        control_input_configuration=context.control_input_configuration,
        treatment_input_configuration=context.treatment_input_configuration,
        expected_causal_effect=effects[relationship],
        outcome_variables=[context.scenario.modelling_scenario.variables[outcome_var]],
    )
    data_collector = ObservationalDataCollector(context.scenario.modelling_scenario, context.observational_data_csv_path)

    causal_test_engine = CausalTestEngine(causal_test_case, causal_specification, data_collector)
    minimal_adjustment_set = causal_test_engine.load_data(index_col=0)
    treatment_vars = list(causal_test_case.treatment_input_configuration)
    minimal_adjustment_set = minimal_adjustment_set - set([v.name for v in treatment_vars])
    # @andrewc19, why can we only have atomic control/treatment values?
    # I think it'd be good to pass it in as two dicts instead of vars, control, treatment lists
    estimation_model = LinearRegressionEstimator((list(treatment_vars)[0].name,),
                                             [causal_test_case.treatment_input_configuration[v] for v in treatment_vars][0],
                                             [causal_test_case.control_input_configuration[v] for v in treatment_vars][0],
                                             minimal_adjustment_set,
                                             (list(causal_test_case.outcome_variables)[0].name,),
                                             causal_test_engine.scenario_execution_data_df,
                                             )
    causal_test_result = causal_test_engine.execute_test(estimation_model)
    test_passes = causal_test_case.expected_causal_effect.apply(causal_test_result)
    assert test_passes, f"{causal_test_case}\n    FAILED - actual causal effect was {causal_test_result.ci_low()} < {causal_test_result.ate} < {causal_test_result.ci_high()}"
