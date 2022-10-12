*** Settings ***
Resource    ./PO/InputPage.robot
Resource    ./ExcelProcessing.robot

*** Keywords ***
Enter Data
    InputPage.Load
    InputPage.Verify Page Loaded
    ExcelProcessing.Open Excel File
    FOR   ${ITERATION_VALUE}   IN RANGE    2    12
        #do something
        ExcelProcessing.Loop And Read Through Cells And Append List     ${ITERATION_VALUE}
        InputPage.Insert Data Into Input Fields
        InputPage.Click Submit Button
        InputPage.Verify Page Loaded
        ExcelProcessing.Clear List Values
    END
    ExcelProcessing.Close Excel File
    sleep    5s