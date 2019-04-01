*** Settings ***
Documentation     A resource file with keywords and variables.
Library           Selenium2Library

*** Variables ***
${SERVER}         cedar.metadatacenter.org
${BROWSER}        Chrome
${DELAY}          0
${USER}           username
${VALID USER}     login
${VALID PASSWORD}    password
${LOGIN URL}      https://${SERVER}
${PROJECTS URL}    https://${SERVER}/dashboard

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Set Selenium Speed    ${DELAY}

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    login

Projects Page Should Be Open
    Title Should Be    Project Cedar
    Set Selenium Speed    ${DELAY}

    