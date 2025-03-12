*** Settings ***
Resource    ../Resource/Settings.resource


*** Keywords ***
Adiciona um status
    &{headers}    Create Dictionary    Content-type=application/json

    &{body}    Create Dictionary
    ...    id=${id_teste}
    ...    tipo=${tipo}

    ${response}    POST
    ...    url=${API.URL}/${API.ROTA_STATUS}
    ...    headers=&{headers}
    ...    json=&{body}

    Should Be Equal As Strings    ${body}    ${response.json()}
    Should Be Equal As Numbers    ${response.status_code}    201

Adiciona um pedido
    &{headers}    Create Dictionary    Content-type=application/json

    &{body}    Create Dictionary
    ...    id=${id_teste}
    ...    nome=${nome}
    ...    carne=${carne}
    ...    pao=${pao}
    ...    opcionais=${opcionais}
    ...    status=${status}

    ${response}    POST
    ...    url=${API.URL}/${API.ROTA_BURGERS}
    ...    headers=&{headers}
    ...    json=&{body}

    Should Be Equal As Strings    ${body}    ${response.json()}
    Should Be Equal As Numbers    ${response.status_code}    201
