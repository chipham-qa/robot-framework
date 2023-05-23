*** Settings ***
Resource  ./PageObject/BackOffice.LandingPage.robot
Resource  ./PageObject/TopNav.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    BackOffice.LandingPage.Navigate To
    #BackOffice.LandingPage.Verify Page Loaded

