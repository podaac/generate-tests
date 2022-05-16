from behave import *
from behave.runner import Context

@given("A <operation type> and a <time unit>")
def step_impl(context):
    raise NotImplementedError("Step: A <operation type> and a <time unit>")

@when("Execute the Purger")
def step_impl(context):
    raise NotImplementedError("Step: Execute the Purger")

@then("Files are deleted")
def step_impl(context):
    raise NotImplementedError("Step: Files are deleted")