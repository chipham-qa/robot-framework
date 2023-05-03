*** Settings ***
Library           Selenium2Library
*** Test cases ***
Scroll Slider
    Open Browser    http://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Scroll Element Into View    id=slider
    Drag And Drop By Offset    id=slider       40    0
    Drag And Drop By Offset    css:div.ui-widget-content div.ui-resizable-e    40    0
    Drag And Drop By Offset    css:div.ui-widget-content div.ui-resizable-s    0     40
    Sleep    2

   