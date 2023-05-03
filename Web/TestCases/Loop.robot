*** Settings ***
Resource   ../Resources/LoginPageKeywords.robot
Suite Teardown  Close Browser

*** Test Cases ***
For In - Get Text In Dropdown List
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Select Frame      css:iframe[id^="frame-one"]
    @{elements}=    Get WebElements    css:select[name="RESULT_RadioButton-9"] option
    FOR    ${element}    IN    @{elements}
        ${option}=      Get Element Attribute    ${element}    value
        Log    ${option}
   END
   Close Browser

For In - Add items to shopping cart
    Open Swag Web    https://www.saucedemo.com    Chrome
    Enter Credentials    standard_user    secret_sauce
    @{items}=   Get WebElements    css:div.inventory_item_description button
    FOR    ${element}    IN    @{items}
        Click Element    ${element}
        Sleep    1
    END

For In Range Test
   Open Swag Web    https://www.saucedemo.com    Chrome
   Enter Credentials    standard_user    secret_sauce
   FOR    ${i}    IN RANGE    1    7
      Add to cart
      Log    Add item ${i}
      Sleep    1
    END
    
*** Keywords ***
Add to cart
    Click Button    //button[contains(text(),"Add to cart")]