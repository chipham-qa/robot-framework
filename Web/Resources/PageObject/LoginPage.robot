*** Settings ***
Library     Selenium2Library
Library     ../Libraries/CustomKeywordsLib.py
Resource    ../Config/Env.robot


*** Variables ***
#Login page
${txt_username} =       name:user-name
${txt_password} =       name:password
${btn_Login} =          name:login-button

*** Keywords ***
Open Swag Web
    Go To      ${URL.${Environment}}
    Maximize Browser Window

Enter Credentials
    [Arguments]      ${username}            ${password}
    input text      ${txt_username}     ${username}
    input password  ${txt_password}     ${password}
    click button    ${btn_Login}

Verify login successfully
    title should be  Swag Labs
    Print Contain Page    Custome keyword
    

