*** Settings ***
Library     Selenium2Library
Test Teardown   Close All Browsers

*** Test Cases ***
Lists Test
    Open Browser    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select     Chrome

    Select Frame    name:iframeResult
    Select From List By Value   xpath://select[@name='cars']    opel
    @{ListLabel}=   Get Selected List Labels   xpath://select[@name='cars']


    @{ListValue}=   Get Selected List Values    xpath://select[@name='cars']

    Select From List By Value    xpath://select[@name='cars']  audi
    List Selection Should Be    xpath://select[@name='cars']    audi

    ${ListValue}=   Get Selected List Value    xpath://select[@name='cars']
    Should Be Equal    ${ListValue}    audi