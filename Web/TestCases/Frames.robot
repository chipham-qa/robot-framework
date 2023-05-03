*** Settings ***
Library     Selenium2Library
Test Teardown   Close All Browsers

*** Test Cases ***
Frames Test
    Open Browser    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_radio    Chrome
    Select Frame    id:iframeResult
    
    Current Frame Should Contain    Display Radio Buttons
    Current Frame Should Not Contain    Checkboxes

    #Check all radio buttons is not selected
    Radio Button Should Not Be Selected    fav_language

    #Click Button    id:html
    ${isHTMLSelected}=  Run Keyword And Return Status    Select Radio Button    fav_language    HTML
    Should Be True    ${isHTMLSelected}

    Radio Button Should Be Set To    fav_language    HTML

    Unselect Frame
    Click Button    id:runbtn