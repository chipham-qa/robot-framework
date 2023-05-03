*** Settings ***
Library     Selenium2Library
Suite Teardown    Close Browser

*** Variables ***
${menu_Widgets}     xpath://div[@class='header-text'][contains(text(),'Interactions')]/span


*** Test Cases ***
Mouse Actions
    Open Browser    https://demoqa.com/elements     Chrome
    Scroll Element Into View        ${menu_Widgets}
    Sleep    2
    Click Element       xpath://div[@class='header-text'][contains(text(),'Widgets')]/span     action_chain=True
    Sleep    1
    Click Element       xpath://li[@id="item-7"]//span[contains(text(),'Menu')]       action_chain=True
    
    Mouse Over      xpath://ul[@id='nav']/li/a[contains(text(),'Main Item 2')]
    Mouse Over      xpath://ul/li/a[contains(text(),'SUB SUB LIST')]
    
Drag and Drop
     Open Browser       https://demoqa.com/droppable        Chrome
     Drag And Drop    id:draggable    id:droppable
      
     #Right click on element
     Open Context Menu    xpath://a[@id="droppableExample-tab-accept"]
     Sleep    2
    
    
