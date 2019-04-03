*** Settings ***
Documentation     A resource file with keywords and variables.
Library           Selenium2Library

*** Variables ***
${SERVER}         cedar.metadatacenter.org
${BROWSER}        Chrome
${MIN_DELAY}          0
${DELAY}          2
${WAITTIME}          5
${USER}           username
${VALID USER}     login
${VALID PASSWORD}    password
${LOGIN URL}      https://${SERVER}
${PROJECTS URL}    https://${SERVER}/dashboard

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${MIN_DELAY}

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
    Set Selenium Implicit Wait    ${WAITTIME}

Click New Button
    Click Button    button-create

Input Field Name By ID
    [Arguments]    ${fieldname}    ${fieldvalue}
    Input Text    id=${fieldname}    ${fieldvalue}

Input Field Name By Label
    [Arguments]    ${fieldlabel}    ${fieldvalue}
    Input text    //input[@aria-label=${fieldlabel}]    ${fieldvalue}

Select Tab
    [Arguments]    ${tabname}
    Click Element    //div[contains(@class, ${tabname})]

Select Range
    [Arguments]    ${tabname}
    Click Element    //div[contains(@class, ${tabname})]

Click Button By Class
    [Arguments]    ${btnname}
    Click Element    //button[contains(@class, ${btnname})]

Select Ontology Term
    [Arguments]    ${ontosearchstring}    ${ontoterm}
    Click Button By Class  "add"
    Input Field Name By ID  field-search-input  ${ontosearchstring}
    Set Selenium Implicit Wait    ${DELAY}
    Click Element    //td[contains(text(), ${ontoterm})]
    Capture Page Screenshot    selectTerm.png
    Click Button By Class    "btn-add-term"

Click Save Button
    [Arguments]    ${savebuttonid}
    Click Button    ${savebuttonid}
