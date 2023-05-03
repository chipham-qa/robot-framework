*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Library    String
Variables   ../Env.py


*** Variables ***
${response}=    ""

*** Keywords ***
Get User
    [Arguments]  ${user_id}
#    ${a}=      Users    ${base_url}
    #${params}=    Create Dictionary    userId=1
    #${headers}=    Create Dictionary    Authorization=Bearer mytoken
    #${response}=    Get Request    api/posts    params=${params}    headers=${headers}
    ${res}=    GET On Session   ${alias}    /api/users/${user_id}
    Set Global Variable  ${response}    ${res.json()}

Check payload should contain keys and values valid
    Dictionary Should Contain Key    ${response}[data]  id
    Dictionary Should Contain Key    ${response}[data]  email
    Dictionary Should Contain Key    ${response}[data]  first_name
    Dictionary Should Contain Key    ${response}[data]  last_name


Create Users
    [Arguments]     ${name}     ${job}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${data}=    Create Dictionary
    ...          name=${name}
    ...          job=${job}

    #${request_body}=  Get File      API/RequestPayloadJson/UserPayload.json
    ${res}=    POST On Session  ${alias}    /api/users    json=${data}    headers=${headers}
    Log    ${res.json()}
    Should Be Equal    ${res.json()}[name]    ${name}
    Should Be Equal    ${res.json()}[job]     ${job}