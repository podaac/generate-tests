from behave import *
from behave.runner import Context

@given("A <dataset> and a <processing type>")
def step_impl(context):
    raise NotImplementedError("Step: A <dataset> and a <processing type>")

@when("Execute the Processor")
def step_impl(context):
    raise NotImplementedError("Step: Execute the Processor")

@then("An error log and processing log are created")
def step_impl(context):
    raise NotImplementedError("Step: All of the files for that dataset and processing type are moved to a scratch directory")