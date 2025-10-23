*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Verify Sign Up Page Opens
    Open Pinterest
    Click Element    xpath=//*[@data-test-id="simple-signup-button"]
    Sleep    2s
    Page Should Contain Element    xpath=//*[@id="email"]
    [Teardown]    Close Pinterest
