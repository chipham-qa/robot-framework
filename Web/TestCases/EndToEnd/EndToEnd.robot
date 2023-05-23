*** Settings ***
Documentation  This is my end to end suite
Resource  ../../Config/Env.robot
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/EndToEnd/End_to_End.robot

*** Test Cases ***
Should be able to access both sites
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page


