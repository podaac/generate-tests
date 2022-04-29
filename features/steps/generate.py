from behave import *
from behave.runner import Context

@given("A <dataset> and a <date>")
def step_impl(context):
    raise NotImplementedError("Step: A <dataset> and a <date>")

@when("Execute the download list creator")
def step_impl(context):
    raise NotImplementedError("Step: Execute the download list creator command")

@then("A download list is created")
def step_impl(context):
    raise NotImplementedError("Step: A download list is created")

@when("Execute the downloader")
def step_impl(context):
    raise NotImplementedError("Step: Execute the downloader")

@then("The files in the download list are downloaded")
def step_impl(context):
    raise NotImplementedError("Step: The files in the download list are downloaded")

@then("The downloaded files are combined by date and time into NetCDF files")
def step_impl(context):
    raise NotImplementedError("Step: The downloaded files are combined by date and time into NetCDF files")