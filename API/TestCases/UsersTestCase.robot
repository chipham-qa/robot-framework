*** Settings ***
Resource  ../Resources/Users.robot
Library   RequestsLibrary
Library    Collections
Test Setup    Create Session      ${alias}      ${base_url}
Test Teardown  Delete All Sessions

*** Test Cases ***
Verify endpoint get user id 1 successfully
    [Tags]  get
    ${res}=    Get User   1
    Status Should Be    200  ${res}
    Check payload should contain keys and values valid
#    Should Be Equal As Strings  ${response.data.email}  george.bluth@reqres.in
#    Should Be Equal As Strings  ${response.data.first_name}  George
#    Should Be Equal As Strings  ${response.data.last_name}  Bluth
#    Dictionary should contain key  ${resp.json()}  id

Verify that the endpoint create user successfully
    [Tags]  create
    ${res}=    Create Users    morpheus    leader
    Status Should Be    201  ${res}