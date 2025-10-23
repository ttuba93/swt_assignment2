*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Log In Successfully
    Open Pinterest
    Click Element    xpath=//*[@data-test-id="simple-login-button"]
    Input Text    id=email    ${EMAIL}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//*[@type="submit"]
    Sleep    5s
    Page Should Contain Element    xpath=//*[@aria-label="Profile"]
    [Teardown]    Close Pinterest
