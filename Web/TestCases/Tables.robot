*** Settings ***
Library           Selenium2Library

*** Test cases ***
Count row and column
    Open Browser    http://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    ${row}=        Get Element Count    xpath=//div[@id='footer-1']//tr  #how to get the locator
    ${column}=     Get Element Count    xpath=//div[@id='footer-1']//tr//th     #how to get locator in column.
Get Data row from table
    ${data_row}=       Get Text        xpath=//div[@id='footer-1']//tr
    Log To Console    ${data_row}
    ${data_row2}=    Get Text    xpath=//div[@id='footer-1']//tr[2]
    Log To Console    ${data_row2}
Get Data any column and row
    ${data}=    Get Table Cell    xpath=//table[@name='BookTable']    3    1
    Log To Console    ${data}
    Table Cell Should Contain    xpath=//table[@name='BookTable']    3    1    Learn Java