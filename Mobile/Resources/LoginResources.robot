*** Settings ***
Library     AppiumLibrary

*** Variables ***
${btn_Login}        xpath=//android.view.View[@content-desc='Login']
${txt_Email}        xpath=//android.widget.EditText[1]
${txt_Password}     xpath=//android.widget.EditText[2]
${btn_Submit}       accessibility_id=Login
*** Keywords ***
Sign In With User
    [Arguments]   ${email}   ${password}
    Input User Email     ${email}
    Input User Password    ${password}
    Submit Login

Click On Login Button On The Dashboard Page
    Wait Until Page Contains Element    ${btn_Login}        timeout=60
    Click Element    ${btn_Login}

Submit Login
    Wait Until Element Is Visible   ${btn_Submit}
    Click Element    ${btn_Submit}
    
Input User Email
    [Arguments]   ${email}
    Verify Email field display
    Tap    ${txt_Email}
    Input Text    ${txt_Email}     ${email}

Input User Password
    [Arguments]   ${password}
    Verify Password field display
    Tap    ${txt_Password}
    Input Text    ${txt_Password}     ${password}
    Hide Keyboard

Verify Email field display
    Wait Until Page Contains Element    ${txt_Email}

Verify Password field display
    Wait Until Page Contains Element    ${txt_Password}

Verify Login Successfully
    Wait Until Page Contains Element    text