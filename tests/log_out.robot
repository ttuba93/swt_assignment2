*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Log Out Successfully
    Open Pinterest
    Click Element    xpath=//*[@data-test-id="simple-login-button"]
    Sleep    2s
    Input Text    id=email    ${EMAIL}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//*[@type="submit"]
    Sleep    5s
    Click Element    xpath=//*[@aria-label="Profile"]
    Sleep    3s
    Click Element    xpath=//*[text()="Log out" or text()="Выйти"]
    Sleep    3s
    Page Should Contain Element    xpath=//*[@data-test-id="simple-login-button"]
    [Teardown]    Close Pinterest
