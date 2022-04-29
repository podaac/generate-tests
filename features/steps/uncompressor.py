from behave import *
from behave.runner import Context

@given("A <dataset>")
def step_impl(context):
    raise NotImplementedError("Step: A <dataset>")

@when("Execute the Uncompressor")
def step_impl(context):
    raise NotImplementedError("Step: Execute the Uncompressor")

@then("All of the files for that dataset will be moved to a new directory")
def step_impl(context):
    raise NotImplementedError("Step: All of the files for that dataset will be moved to a new directory")