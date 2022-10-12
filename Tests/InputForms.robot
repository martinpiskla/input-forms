*** Settings ***
Resource    ../Resources/ExcelProcessing.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/InputApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =        firefox
${START_URL} =      https://www.rpachallenge.com
${SEARCH_TERM} =        Lamborghini
#@{INPUT_DATA}

*** Tasks ***
Input data
    [Documentation]    Task imports
    #InputApp.Test Excel Looping
    InputApp.Enter Data
    #InputApp.Open file test