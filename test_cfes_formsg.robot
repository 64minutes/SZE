*** Settings ***
Library    SeleniumLibrary
Documentation    This is a documentation of the automated testcase

*** Test Cases ***

Submit CFES Form
    [Documentation]    Launch Yahoo and search for Python
    [tags]    Regression
    Open Browser    https://form.gov.sg/646c01f16e255a00117d65d2    chrome
    Click Element    id:632824a767747a0011f4468d
    Pause Exeuction
    [Teardown]    Close Browser

    