*** Settings ***
Documentation     A test suite with a single test for valid login.
Library           Selenium2Library
Library           Selenium2Screenshots
Resource          resource.robot

*** Variables ***
${STR}         Template

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    thecedarteam@gmail.com
    Input Password    markmusen007
    Capture Page Screenshot    login.png
    Submit Credentials
    Projects Page Should Be Open
    Capture Page Screenshot    myworkspace.png

Create New Template
    Click New Button
    Click Link  id=button-create-template
    Input Field Name By ID  template-name  Demonstration Template
    Input Field Name By ID  template-identifier  demo-template
    Input Field Name By ID  template-description  "A demo template to show automation"
    Capture Page Screenshot    addTemplatename.png
    Click Link  id=button-add-field-textfield
    Input Field Name By Label  "Enter Field Name"  Type of Injury
    Select Tab  "required-tab"
    Select Range  "date-range"
    Capture Page Screenshot    setRequired.png
    Select Tab  "value-controlled-terms-tab"
    Select Ontology Term  "Injury"  "C3671"
    Capture Page Screenshot    addOntologyTerm.png
    Select Ontology Term  "Chemical Exposure"  "C36290"
    Click Save Button    button-save-template

Create New Field
    Click New Button
    Click Link  id=button-create-field

Create New Element
    Click New Button
    Click Link  id=button-create-element

