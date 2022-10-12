*** Settings ***
Resource    ./PO/InputPage.robot
Resource    ./ExcelProcessing.robot

*** Keywords ***
Enter Data
    InputPage.Load
    InputPage.Verify Page Loaded
    ExcelProcessing.Open Excel File
    FOR   ${iteration}   IN RANGE    2    11
        #do something
        ExcelProcessing.Loop And Read Through Cells And Append List     ${iteration}
        InputPage.Insert Data Into Input Fields
        InputPage.Click Submit Button
        InputPage.Verify Page Loaded
        create list     @{INPUT_DATA}
    END
    ExcelProcessing.Close Excel File
    sleep    5s


Test Excel Looping
    ExcelProcessing.Open Excel File
    FOR   ${ITERATION_VALUE}   IN RANGE    2    11
        ExcelProcessing.Loop And Read Through Cells And Append List     ${ITERATION_VALUE}
        Create list     @{INPUT_DATA}
    END