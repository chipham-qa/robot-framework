#General Keywords (e.g. Login/Logout, Navigation, ...) are stored here
*** Settings ***
Library     Selenium2Library
Resource    ../Config/Env.robot

*** Keywords ***
Begin Web Test
    set selenium timeout  30 seconds
    Open Browser  about:blank  ${Browser}

End Web Test
    Close Browser

Go To Page
    [Arguments]     ${URL}
    Go To    ${URL}



