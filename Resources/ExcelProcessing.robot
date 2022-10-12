*** Settings ***
Library     ExcelLibrary
Library     Collections

*** Variables ***
${FILE_PATH} =        C:/\development/robot-scripts/\input-forms/\Resources/\challenge.xlsx

*** Keywords ***
Open Excel File
    Open Excel Document     filename=${FILE_PATH}    doc_id=docid

Read Excel Cells
    [Arguments]    ${row}   ${col}
    ${CELL_VALUE} =     read excel cell    row_num=${row}    col_num=${col}
    set suite variable    ${CELL_VALUE}

Close Excel File
    close current excel document

Loop And Read Through Cells And Append List
    [Arguments]     ${iteration}
    FOR    ${row}   IN RANGE    ${iteration}    ${iteration}
        FOR   ${col}   IN RANGE    1    7
        #do something
        Read Excel Cells    ${row}  ${col}
        Log     ${CELL_VALUE}   console=yes
        Append To List  @{INPUT_DATA}   ${CELL_VALUE}
        END
    END

Loop Through Excel Rows
    FOR   ${row}   IN RANGE    2    11