*** Settings ***
Library    Selenium2Library
Resource   ../Resources/PageObject/LoginPage.robot
Resource    ../Resources/Common.robot

Test Setup  Begin Web Test
Test Teardown   End Web Test


*** Variables ***
${username}     standard_user
${password}     secret_sauce

*** Test Cases ***
Should go to landing page
    LoginPage.Open Swag Web
    LoginPage.Enter Credentials    ${username}    ${password}

