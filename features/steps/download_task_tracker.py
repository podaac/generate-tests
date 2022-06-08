from behave import *
from behave.runner import Context

@given("Given A <input directory> and a <threshold>")
def step_impl(context):
    raise NotImplementedError("Step: A <dataset> and a <processing type>")

@when("Execute the Download Task Tracker")
def step_impl(context):
    raise NotImplementedError("Step: Execute the Download Task Tracker")

@then("Input directory is crawled and a txt file is found")
def step_impl(context):
    raise NotImplementedError("Step: Input directory is crawled and a txt file is found")