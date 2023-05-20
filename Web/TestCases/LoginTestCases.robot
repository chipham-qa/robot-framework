*** Settings ***
Library    Selenium2Library
Resource   ../Resources/LoginPageKeywords.robot

*** Variables ***
${Browser}  Chrome
${URL}  https://www.saucedemo.com
${username}     standard_user
${password}     secret_sauce

*** Test Cases ***
Verify user login successfully
    Login Swag
    LoginPageKeywords.Verify login successfully
    Close Browser

*** Keywords ***
Login Swag
    Open Swag Web    ${URL}    ${Browser}
    Enter Credentials   ${username}     ${password}

