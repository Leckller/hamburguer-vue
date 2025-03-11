*** Settings ***
Library     RequestsLibrary
Library     String


*** Variables ***
${HOST}             http://localhost:3000

# Rotas
${ADD_NEW_ORDER}    burgers


*** Test Cases ***
TC01 - Realizar a adição de um novo pedido
    ${response_keyword}    Adiciona o pedido de um hamburguer
    ...    nome="Teste"
    ...    carne={id: 1, tipo: Maminha}
    ...    pao={id: 1, tipo: Italiano Branco}
    ...    opcionais=[]
    ...    status="Solicitado"
    Should Be Equal As Numbers    ${response_keyword.status_code}    201


*** Keywords ***
Adiciona o pedido de um hamburguer
    [Arguments]    ${nome}    ${carne}    ${pao}    ${opcionais}    ${status}

    &{headers}    Create Dictionary    Content-type=application/json

    &{body}    Create Dictionary
    ...    nome=${nome}
    ...    carne=${carne}
    ...    pao=${pao}
    ...    opcionais=${opcionais}
    ...    status=${status}

    ${response}    POST    url=${HOST}/${ADD_NEW_ORDER}    headers=&{headers}    json=&{body}

    RETURN    ${response}
