*** Settings ***
Library    SeleniumLibrary
Resource    ../ExcelProcessing.robot

*** Variables ***
${ADDRESS_INPUT} =  css=input[ng-reflect-name='labelAddress']
${COMPANY_INPUT} =  css=input[ng-reflect-name='labelCompanyName']
${EMAIL_INPUT} =  css=input[ng-reflect-name='labelEmail']
${FIRST_NAME_INPUT} =  css=input[ng-reflect-name='labelFirstName']
${LAST_NAME_INPUT} =  css=input[ng-reflect-name='labelLastName']
${PHONE_INPUT} =  css=input[ng-reflect-name='labelPhone']
${ROLE_INPUT} =  css=input[ng-reflect-name='labelRole']
${SUBMIT_BUTTON} =  css=input[value='Submit']

*** Keywords ***
Load
        Go To      ${START_URL}

Verify Page Loaded
        #element attribute value should be    input  ng-reflect-name  labelAddress
        wait until page contains element    ${ADDRESS_INPUT}    timeout=15s
        wait until page contains element    ${COMPANY_INPUT}    timeout=15s
        wait until page contains element    ${EMAIL_INPUT}    timeout=15s
        wait until page contains element    ${FIRST_NAME_INPUT}    timeout=15s
        wait until page contains element    ${LAST_NAME_INPUT}    timeout=15s
        wait until page contains element    ${PHONE_INPUT}    timeout=15s
        wait until page contains element    ${ROLE_INPUT}    timeout=15s

Insert Data Into Input Fields
        input text  ${ADDRESS_INPUT}    @{INPUT_DATA}[5]
        input text  ${COMPANY_INPUT}    @{INPUT_DATA}[2]
        input text  ${EMAIL_INPUT}    @{INPUT_DATA}[6]
        input text  ${FIRST_NAME_INPUT}    @{INPUT_DATA}[0]
        input text  ${LAST_NAME_INPUT}    @{INPUT_DATA}[1]
        input text  ${PHONE_INPUT}    @{INPUT_DATA}[7]
        input text  ${ROLE_INPUT}    @{INPUT_DATA}[3]
        sleep    5s

Click Submit Button
        click button    ${SUBMIT_BUTTON}

Insert Data Into Input Fields 2nd round
        input text  ${ADDRESS_INPUT}    2nd test address 123
        input text  ${COMPANY_INPUT}    second test company
        input text  ${EMAIL_INPUT}    secondtest@meil.com
        input text  ${FIRST_NAME_INPUT}    secondtest name
        input text  ${LAST_NAME_INPUT}    secondname testss
        input text  ${PHONE_INPUT}    +4222228999
        input text  ${ROLE_INPUT}    Second Tester role
        sleep    5s

Insert Data Into Input Fields 3nd round
        input text  ${ADDRESS_INPUT}    2nd test address 123
        input text  ${COMPANY_INPUT}    second test company
        input text  ${EMAIL_INPUT}    secondtest@meil.com
        input text  ${FIRST_NAME_INPUT}    ${CELL_VALUE}
        input text  ${LAST_NAME_INPUT}    secondname testss
        input text  ${PHONE_INPUT}    +4222228999
        input text  ${ROLE_INPUT}    Second Tester role
        sleep    5s