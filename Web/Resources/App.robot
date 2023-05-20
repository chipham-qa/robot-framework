*** Settings ***
Library     Selenium2Library
Resource    PageObject/RegisterPage.robot


*** Keywords ***
Create New Account
    [Arguments]     ${UserData}
    RegisterPage.Open page
    RegisterPage.Verify Page Loaded
    Sleep    2
    RegisterPage.Verify Page Load Password Field
    RegisterPage.Scroll To Password Field
    RegisterPage.Fill Page And Submit       ${UserData}

