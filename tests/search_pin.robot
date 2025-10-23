*** Settings ***
Resource    ../resources/variables.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Search For A Pin
    Open Pinterest
    Click Element    xpath=//*[@data-test-id="simple-login-button"]
    Sleep    2s
    Input Text    id=email    ${EMAIL}
    Input Text    id=password    ${PASSWORD}
    Click Button    xpath=//*[@type="submit"]
    Sleep    5s
    Input Text    xpath=//*[@aria-label="Search"]    interior design
    Press Keys    xpath=//*[@aria-label="Search"]    ENTER
    Sleep    4s
    Page Should Contain    interior
    [Teardown]    Close Pinterest
