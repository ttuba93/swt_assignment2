*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Log In Successfully
    Open Pinterest
    Click Element    xpath=//*[@data-test-id="simple-login-button"]
    Sleep    2s
    Input Text    id=email    ${EMAIL}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//*[@type="submit"]
    Sleep    5s
    Page Should Contain Element    xpath=//*[@aria-label="Profile"]
    [Teardown]    Close Pinterest
