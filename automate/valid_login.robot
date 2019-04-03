*** Settings ***
Documentation     A test suite with a single test for valid login.
Library           Selenium2Library
Library           Selenium2Screenshots
Test Setup  Set Screenshot Directory    screenshots/
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
    CEDAR Workspace Should Be Open

Create New Element
    Click New Button
    Click Link  id=button-create-element
    Input Field Name By ID  element-name  Address
    Input Field Name By ID  element-identifier  demo-address
    Input Field Name By ID  element-description  "A demo element to document address"
    Add CEDAR Controlled Term    "Address"    "C25407"
    Click Button By Class    "dropdown-toggle"
    Capture Page Screenshot    elementSetType.png
    Click Button By Class    "close"
    Add Text Field    Address Line 1    First Part of Street Address    "True"
    Add Text Field    Address Line 2    Additional Street Address Information    "False"
    Add Text Field    City    ""    "True"
    Add Text Field    State    ""    "True"
    Add Text Field    Zip Code    "5-digit zip code in US"    "True"
    Click Save Button    button-save-element
    Go Back To CEDAR Workspace

Create New Template
    Click New Button
    Capture Page Screenshot    myworkspace.png
    Click Link  id=button-create-template
    Input Field Name By ID  template-name  Demonstration Template
    Input Field Name By ID  template-identifier  demo-template
    Input Field Name By ID  template-description  "A demo template to show automation"
    Capture Page Screenshot    addTemplatename.png
    Add Text Field    Type of Injury    Type of injury being identified    "True"
    Select Tab  "value-controlled-terms-tab"
    Select Ontology Term  "Injury"  "C3671"
    Capture Page Screenshot    addOntologyTerm.png
    Select Ontology Term  "Chemical Exposure"  "C36290"
    Add Text Field    Anatomic Location    Location of the item being identified    "False"
    Select Tab  "value-controlled-terms-tab"
    Select Ontology Term  "anatomical structure"  "RID13390"
    Click Save Button    button-save-template
    Go Back To CEDAR Workspace

Create New Field
    Click New Button
    Click Link  id=button-create-field
    Go Back To CEDAR Workspace
