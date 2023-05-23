*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOP_NAV_TEAM_LINK} =  css:#bs-example-navbar-collapse-1 a[href='#team']

*** Keywords ***
Select "Team" Page
    click element  ${TOP_NAV_TEAM_LINK}
    Sleep  3s