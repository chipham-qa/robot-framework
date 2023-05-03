*** Settings ***
Resource   ../Resources/LoginPageKeywords.robot

*** Test Cases ***
If Else Example
    Open Swag Web    https://www.saucedemo.com    Chrome
    Enter Credentials    standard_user    secret_sauce
    
    ${items}=       Get Element Count    css:div.inventory_item
    @{elements}=    Get WebElements      css:div.inventory_item
    Run Keyword If  ${items} == 6
    ...    Print Item Name     @{elements}
    ...  ELSE IF     ${items} > 6
    ...     Keyword Test 2
    ...  ELSE
    ...     Keyword Test 3



*** Keywords ***
Print Item Name
    [Arguments]    @{elements}
    FOR    ${element}    IN    @{elements}
        ${item_name}=   Get Text    ${element}
        Log    ${item_name}
    END

    Close Browser

Keyword Test 2
    Log    Test Keyword 2
    Close Browser

Keyword Test 3
    Log    Test Keyword 3
    Close Browser