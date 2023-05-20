*** Settings ***
Library     Selenium2Library

*** Variables ***
${txt_name}=    xpath://section[@id='section-basic-example']//input[@id='form3Example1c']
${txt_email}=   xpath://section[@id='section-basic-example']//input[@id='form3Example3c']
${txt_password}=    xpath://section[@id='section-basic-example']//input[@id='form3Example4c']
${text_repeat_password}=    xpath://section[@id='section-basic-example']//input[@id='form3Example4cd']
*** Keywords ***
Open page
    ${URL} =    Set Variable    https://mdbootstrap.com/docs/standard/extended/registration
    Go To   ${URL}
    Maximize Browser Window

Enter Your Name
    [Arguments]     ${name}
    Input Text    ${txt_name}    ${name}

Enter Email
    [Arguments]     ${email}
    Input Text    ${txt_email}    ${email}

Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_password}    ${password}

Enter Repeat Password
    [Arguments]     ${repeat_password}
    Input Text    ${text_repeat_password}    ${repeat_password}

Verify Page Loaded
    Wait Until Page Contains Element   ${txt_name}

Verify Page Load Password Field
    Wait Until Element Is Visible     ${txt_password}

Fill Page And Submit
    [Arguments]     ${UserData}
    Enter Your Name     ${UserData.Name}
    Enter Email         ${UserData.Email}
    Enter Password      ${UserData.Password}
    Enter Repeat Password       ${UserData.Password}
    # Todo Submit button

Scroll To Password Field
    Scroll Element Into View        ${txt_password}