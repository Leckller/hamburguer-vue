*** Settings ***
Resource    ../Resource/Settings.resource


*** Keywords ***
Remove um status
    &{headers}    Create Dictionary    Content-type=application/json

    &{body}    Create Dictionary
    ...    id=${id_teste}
    ...    tipo=${tipo}

    ${response}    DELETE
    ...    url=${API.URL}/${API.ROTA_STATUS}/${id_teste}
    ...    headers=&{headers}

    Should Be Equal As Strings    ${body}    ${response.json()}
    Should Be Equal As Numbers    ${response.status_code}    200

Remove um pedido
    &{headers}    Create Dictionary    Content-type=application/json

    &{body}    Create Dictionary
    ...    id=${id_teste}
    ...    nome=${nome_patch}
    ...    carne=${carne_patch}
    ...    pao=${pao_patch}
    ...    opcionais=${opcionais_patch}
    ...    status=${tipo_patch}

    ${response}    DELETE
    ...    url=${API.URL}/${API.ROTA_BURGERS}/${id_teste}
    ...    headers=&{headers}

    Should Be Equal As Strings    ${body}    ${response.json()}
    Should Be Equal As Numbers    ${response.status_code}    200
