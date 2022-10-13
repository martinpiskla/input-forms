*** Settings ***
Library    SeleniumLibrary
Resource    ExcelProcessing.robot

*** Keywords ***
Begin Web Test
    Open Browser        about:blank     ${BROWSER}
    ExcelProcessing.Open Excel File
End Web Test
    Close Browser
    ExcelProcessing.Close Excel File