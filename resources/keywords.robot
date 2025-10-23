*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Pinterest
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s

Close Pinterest
    Close Browser
