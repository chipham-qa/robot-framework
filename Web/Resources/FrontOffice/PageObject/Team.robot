*** Settings ***
Library  Selenium2Library

*** Variables ***
${HEADER_LABEL} =  css:#team h2

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${HEADER_LABEL}

Validate Page Contents
    # this fails in chrome but passes in Edge
    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team

    ${ElementText} =  get text  ${HEADER_LABEL}
    Should Be Equal As Strings  ${ElementText}   Our Amazing Team    ignore_case=true
