from behave import *
from behave.runner import Context

@given("A <dataset> and a <processing type>")
def step_impl(context):
    raise NotImplementedError("Step: A <dataset> and a <processing type>")

@when("Execute the Reporter")
def step_impl(context):
    raise NotImplementedError("Step: Execute the Reporter")

@then("Input logs are searched to determine the number of files processed")
def step_impl(context):
    raise NotImplementedError("Step: Input logs are searched to determine the number of files processed")