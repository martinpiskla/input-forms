*** Settings ***
Library    SeleniumLibrary
Library     Collections

*** Keywords ***
Begin Web Test
    Open Browser        about:blank     ${BROWSER}

End Web Test
    Close Browser