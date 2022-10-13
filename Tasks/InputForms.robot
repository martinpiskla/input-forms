*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/InputApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =        firefox
${START_URL} =      https://www.rpachallenge.com

*** Tasks ***
Input Forms
    [Documentation]    Task loops through source excel file and inputs the data into corresponding input fields of specific webpage
    InputApp.Load Input Page And Verify
    InputApp.Read And Enter Data