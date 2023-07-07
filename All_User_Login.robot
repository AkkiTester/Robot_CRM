*** Settings ***
Documentation    Test Login Functionality
Resource    POM/Login_Page.robot
Test Teardown    Close Browser
*** Test Cases ***
Test_Admin_Login
    [Documentation]    Test Admin Login
    [Tags]    Smoke
    Open Browser And Open Login Page
    Input Email And Pass    ${USER Admin}[email]     ${USER Admin}[password]
    Sleep Time 2s
    Click Sign In Button
    Page Have Hospital Statistics Header

Test_Hr_Login
    [Documentation]    Test HR Login
    [Tags]    Smoke
    Open Browser And Open Login Page
    Input Email And Pass    ${USER HR}[email]     ${USER HR}[password]
    Sleep Time 2s
    Click Sign In Button
    Page Have Hospital Statistics Header
