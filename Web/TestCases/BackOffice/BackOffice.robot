*** Settings ***
Resource  ../../Config/Env.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/BackOffice/Back_Office.robot

*** Test Cases ***
Should be able to access "Landing" page
    [Documentation]  This is test 1
    [Tags]  test1
    BackOfficeApp.Go to Landing Page

