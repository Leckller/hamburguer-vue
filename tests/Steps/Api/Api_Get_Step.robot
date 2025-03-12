*** Settings ***
Resource    ../Resource/Settings.resource


*** Keywords ***
Faz a listagem dos ingredientes
    &{headers}    Create Dictionary    Content-type=application/json

    ${response}    GET    url=${API.URL}/${API.ROTA_INGREDIENTES}    headers=&{headers}

    Should Be Equal As Numbers    ${response.status_code}    200

Faz a listagem dos status
    &{headers}    Create Dictionary    Content-type=application/json

    ${response}    GET    url=${API.URL}/${API.ROTA_STATUS}    headers=&{headers}

    Should Be Equal As Numbers    ${response.status_code}    200

Faz a listagem dos pedidos
    &{headers}    Create Dictionary    Content-type=application/json

    ${response}    GET    url=${API.URL}/${API.ROTA_BURGERS}    headers=&{headers}

    Should Be Equal As Numbers    ${response.status_code}    200
