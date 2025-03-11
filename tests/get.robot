*** Settings ***
Library     RequestsLibrary
Library     String


*** Variables ***
${HOST}                     http://localhost:3000

# Rotas
${GET_ALL_INGREDIENTS}      ingredientes
${GET_SINGLE_INGREDIENT}    ingredientes/id-produto


*** Test Cases ***
TC01 - Realizar busca de todos os produtos
    Pegar todos os produtos

# Não tem rota p fazer isso mas vou deixar por ser um padrão útil p depois

TC02 - Realizar busca de um único produto
    Pegar um único produto de id 1


*** Keywords ***
Pegar todos os produtos
    &{headers}    Create Dictionary    Content-type=application/json

    GET    url=${HOST}/${GET_ALL_INGREDIENTS}    headers=&{headers}

Pegar um único produto de id ${id}
    &{headers}    Create Dictionary    Content-type=application/json

    ${GET_SINGLE_PRODUCT}    Replace String    ${GET_SINGLE_INGREDIENT}    id-produto    ${id}

    GET    url=${HOST}/${GET_SINGLE_INGREDIENT}    headers=&{headers}    expected_status=404
