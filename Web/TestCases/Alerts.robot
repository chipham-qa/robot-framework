*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close All Browsers

*** Test Cases ***
Alerts Test Ok And Cancle Button
    Open Browser    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_confirm   Chrome
    Select Frame    iframeResult

    Click Button    css:button[onclick="myFunction()"]
    Sleep    2
    Handle Alert    action=ACCEPT

    Click Button    css:button[onclick="myFunction()"]
    Sleep    2
    ${message}=     Handle Alert    action=DISMISS     timeout=2s

Alert Test With Input
    Open Browser    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_prompt      Chrome
    Select Frame    iframeResult
    Click Button    css:button[onclick="myFunction()"]

    Input Text Into Alert       Alice       ACCEPT
    Page Should Contain    Hello Alice! How are you today?

Alert Test With Message
    Open Browser    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert2      Chrome
    Select Frame    iframeResult
    Click Button    css:button[onclick="myFunction()"]
    Sleep    3
    Alert Should Be Present     Hello How are you?     ACCEPT
