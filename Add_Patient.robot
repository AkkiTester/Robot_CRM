*** Settings ***
Documentation    Test Add Patient Functionality
Resource    POM/Login_Page.robot
Test Teardown    Close Browser
*** Test Cases ***
Add Patient
    [Documentation]    Add Patient
    [Tags]    Smoke
    Admin Login
    Click Link    partial link:Patient
    Click Element    xpath://h3/a
    Input Text    id:full_name      Ad
    Input Text    id:mobile_no      283874834773
    Select From List By Value   name:gender     1
    Select From List By Label   name:gender     Male
    Click Button    xpath://button[text()='Next']