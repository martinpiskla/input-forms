*** Settings ***
Resource    ./PO/InputPage.robot
Resource    ./ExcelProcessing.robot

*** Keywords ***
Load Input Page And Verify
    InputPage.Load Page
    InputPage.Verify Input Page Loaded

Read And Enter Data
    FOR   ${ITERATION_VALUE}   IN RANGE    2    12  #base is 2 as the input data in excel begin on 2nd row
        ExcelProcessing.Loop And Read Through Cells And Append List     ${ITERATION_VALUE}
        InputPage.Insert Data Into Input Fields
        InputPage.Click "Submit" Button
        InputPage.Verify Input Page Loaded
        ExcelProcessing.Clear List Values
    END