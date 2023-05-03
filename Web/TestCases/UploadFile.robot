*** Settings ***
Library           Selenium2Library
Library           Collections
Suite Teardown      Close Browser
*** Test Cases ***
Input all file
    Open Browser    http://testautomationpractice.blogspot.com/    chrome
    Scroll Element Into View    xpath://h2[contains(text(), "XPath Axes")]
    Select Frame      css:iframe[id^="frame-one"]
    Choose File       xpath://input[@id="RESULT_FileUpload-10"]    C:/Users/mrchi/Downloads/test-upload.xlsx

    Sleep    2
