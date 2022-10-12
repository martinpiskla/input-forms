*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/InputApp.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER} =        firefox
${START_URL} =      https://www.rpachallenge.com

*** Tasks ***
Input data
    [Documentation]    Task imports
    InputApp.Enter Data