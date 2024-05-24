*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Documentation    This is the documentation of Form.gov test site.

*** Variables ***
${form_URL}    https://form.gov.sg/646c01f16e255a00117d65d2

*** Test Cases ***
Simple Launch and fill 
    Open Browser    ${form_URL}    chrome
    Wait Until Element Is Visible    css:.chakra-form-control:nth-child(2) .chakra-radio:nth-child(3) > .chakra-radio__control
    Click Element    css:.chakra-form-control:nth-child(2) .chakra-radio:nth-child(3) > .chakra-radio__control
    Capture Page Screenshot
    Input Text    id:632824a767747a0011f4468d    text 
    Click Element    css:.chakra-form-control:nth-child(4) .chakra-radio:nth-child(1) > .chakra-radio__control
    Input Text    id:632824c3c83c0c0011792d1f    text 
    Input Text    id:632824ce8bdc68001194ada8    987 
    Input Text    id:632824d6c83c0c0011792f57    987@hotmail.com 
    Input Text    id:632824e18bdc68001194af71    987.co 
    Capture Page Screenshot
    Click Element    css:.css-1szjd8b 
    Sleep    5s    #Add a sleep to observe result
    Page Should Contain    Thank you
    Capture Page Screenshot

    