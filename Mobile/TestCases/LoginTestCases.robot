*** Settings ***
Resource    ../Resources/ConnectAndroid.robot
Resource    ../Resources/LoginResources.robot
Variables   ../user-config.py
Test Setup      Set Appium Timeout    10

*** Test Cases ***
Verify the user login successfully
    Open And Connect Android Simulator
    Click On Login Button On The Dashboard Page
    Sign In With User    ${email}    ${password}
