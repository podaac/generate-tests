from behave import *
from behave.runner import Context

@given("A <date rangea> and a <dataset>")
def step_impl(context):
    raise NotImplementedError("Step: A <date range> and a <dataset>")

@when("Execute the download list creator command")
def step_impl(context):
    raise NotImplementedError("Step: Execute the download list creator command")

@then("<number files> are created with a total number of <downloads>")
def step_impl(context):
    raise NotImplementedError("Step: <number files> are created with a total number of <downloads>")

@given("A <dataset> and a specific <number> of days")
def step_impl(context):
    raise NotImplementedError("Step: A <dataset> and a specific <number> of days")

@when("Execute the download list creator command")
def step_impl(context):
    raise NotImplementedError("Step: Execute the download list creator command")

@then("A list of files to download are created from today through the number of days.")
def step_impl(context):
    raise NotImplementedError("Step: A list of files to download are created from today through the number of days")