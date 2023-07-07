*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Admin Login
    Open Browser And Open Login Page
    Input Email And Pass     ${USER Admin}[email]     ${USER Admin}[password]
    Click Sign In Button
Open Browser and Open Login Page
    Open Browser    ${Login_Url}    ${Browser}
    Maximize Browser Window
Input Email And Pass
    [Arguments]     ${username}     ${password}
    Input Text    name:email        ${username}
    Input Text    name:password    ${password}
Click Sign In Button
    Click Element    xpath://input[@value='Sign In']
Sleep Time 2s
    Sleep    2s
Enterl Valid Id PASS
    Click Button    xpath://button[contains(text(),'Admin')]
Page Have Hospital Statistics Header
    Element Should Be Visible       xpath://h1[contains(text(),'Hospital Statistics')]


*** Variables ***
${Login_Url}        https://hospitalb.com/login
#${Browser}          headlesschrome
${Browser}          chrome
&{USER Admin}       email=admin@gmail.com    password=123456
&{USER HR}       email=hr@gmail.com    password=123456
