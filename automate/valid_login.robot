*** Settings ***
Documentation     A test suite with a single test for valid login.
Library           Selenium2Library
Library           Selenium2Screenshots
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    thecedarteam@gmail.com
    Input Password    markmusen007
    Capture Page Screenshot
    Submit Credentials
    Projects Page Should Be Open
    [Teardown]    Close Browser