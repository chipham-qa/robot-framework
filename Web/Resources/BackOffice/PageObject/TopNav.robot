*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOP_NAV_USER_PROFILE}=  css:nav[role='navigation'] a[data-toggle='dropdown'] i[class='fa fa-user fa-fw']
${BTN_USER_PROFILE}=    xpath://a[contains(text(), ' User Profile')]
*** Keywords ***
Select "Team" Page
    Click Element  ${TOP_NAV_USER_PROFILE}
    Click Element    ${BTN_USER_PROFILE}
    Sleep  3s