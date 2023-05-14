*** Settings ***
Library     Selenium2Library
Variables  ../Locators/LoginPage.py
Library     ../Libraries/CustomKeywordsLib.py

*** Keywords ***
Open Swag Web
    [Arguments]         ${URL}          ${Broswer}
    Open Browser        ${URL}          ${Broswer}
    Maximize Browser Window

Enter Credentials
    [Arguments]      ${username}            ${password}
    input text      ${txt_username}     ${username}
    input password  ${txt_password}     ${password}
    click button    ${btn_Login}

Verify login successfully
    title should be  Swag Labs
    Print Contain Page    Custome keyword

