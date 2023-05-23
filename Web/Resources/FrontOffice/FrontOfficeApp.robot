*** Settings ***
Resource  ./PageObject/FrontOffice.LandingPage.robot
Resource  ./PageObject/TopNav.robot
Resource  ./PageObject/Team.robot


*** Keywords ***
Go to Landing Page
    FrontOffice.LandingPage.Navigate To
    FrontOffice.LandingPage.Verify Page Loaded

Go to "Team" Page
    TopNav.Select "Team" Page
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate Page Contents