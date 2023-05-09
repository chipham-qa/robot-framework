*** Settings ***
Library    Selenium2Library
Resource   ../Resources/LoginPageKeywords.robot
Library     DataDriver       Web/TestData/login.xlsx      sheet_name=Sheet1

Suite Setup         Open Swag Web     ${URL}      ${Browser}
Test Template      Invalid Login


*** Variables ***
${Browser}  Chrome
${URL}  https://www.saucedemo.com


*** Test Cases ***
Login Test with Excel using     ${username}     ${password}     ${errormessage}

*** Keywords ***
Invalid Login
    [Arguments]     ${username}      ${password}        ${errormessage}
    Enter Credentials  ${username}      ${password}
    click button    ${btn_Login}
    page should contain     ${errormessage}