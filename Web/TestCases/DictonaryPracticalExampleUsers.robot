*** Settings ***
Library    Selenium2Library
Resource   ../Resources/PageObject/RegisterPage.robot
Resource   ../Resources/Common.robot
Resource   ../Resources/App.robot

Test Setup  Begin Web Test
Test Teardown   End Web Test


*** Variables ***
&{CUSTOMER_USER}=   Name=TestName   Email=bryan@robotframework.com  Password=MyPassword!

*** Test Cases ***
Should be able to register for new account
    [Tags]  register
    App.Create New Account      ${CUSTOMER_USER}


