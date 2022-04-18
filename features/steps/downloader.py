from behave import *
from behave.runner import Context

@given("A <download list> and a <dataset>")
def step_impl(context):
    raise NotImplementedError("Step:A <download list> and a <dataset>")

@when("Execute the Downloader")
def step_impl(context):
    raise NotImplementedError("Step: Execute the Downloader")

@then("All of the files in the list are downloaded")
def step_impl(context):
    raise NotImplementedError("Step: All of the files in the list are downloaded")