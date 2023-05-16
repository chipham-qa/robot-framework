*** Settings ***
Library     Selenium2Library
*** Variables ***
${URL}  https://www.amazon.com/s?i=specialty-aps&bbn=16225007011&rh=n%3A16225007011%2Cn%3A13896617011&ref=nav_em__nav_desktop_sa_intl_computers_tablets_0_2_6_4

*** Test Cases ***
Search product page has 30 product
    Open Browser        ${URL}      Chrome
    Verify Search Product Count    24
    Close Browser


*** Keywords ***
Verify Search Product Count
    [Arguments]     ${expectedProduct}
    Search Product Count      ${expectedProduct}

Search Product Count
    [Arguments]     ${expectedProduct}
    Page Should Contain Element    //div[starts-with(@cel_widget_id, 'MAIN-SEARCH_RESULTS')]    limit=${expectedProduct}