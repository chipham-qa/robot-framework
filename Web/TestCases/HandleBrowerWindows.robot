*** Settings ***
Library     Selenium2Library
Test Teardown   Close All Browsers

*** Test Cases ***
Switch Between Windows Test
    Open Browser  https://gxd4e.csb.app/    Chrome
    Click Button    id:openwindow
    ${handles}  Get Window Handles
    Switch Window    new        # ${handles}[1]
    Click Button    id:closewindow
    Switch Window    main       # ${handles}[0]
    Click Button    id:openalert

    Log  Number of windows: ${handles}

Switch Between Browsers Test
    Open Browser  https://google.com/    Chrome     alias=gg        # Put the name varibale alias to help us handle browsers
    Open Browser  https://gxd4e.csb.app/    Chrome      alias=gxd4e

    &{alias}    Get Browser Aliases
    Switch Browser      gg
    Title Should Be    Google

    Switch Browser      gxd4e
    Click Button    id:openwindow
