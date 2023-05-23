*** Settings ***
Library  Selenium2Library

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =      id:merlin-chat

*** Keywords ***
Navigate To
    Go To  ${BACK_OFFICE_URL}

Verify Page Loaded
    Wait Until Page Contains Element  ${LANDING_NAVIGATION_ELEMENT}