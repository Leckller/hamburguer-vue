*** Settings ***
Resource    ../Resource/Settings.resource


*** Test Cases ***
TC-API-01: Executa e valida as requisições GET para cada rota
    Faz a listagem dos ingredientes

    Faz a listagem dos status

    Faz a listagem dos pedidos

TC-API-02: Executa e valida as requisições POST para cada rota
    Adiciona um status
    ...    tipo=cancelado

    Adiciona um pedido
    ...    nome=Usuario_Teste
    ...    carne={id: 1, tipo: Maminha}
    ...    pao={id: 1, tipo: Italiano Branco}
    ...    opcionais=[Bacon, Cebola roxa]
    ...    status="Solicitado"

TC-API-03: Executa e valida as requisições DELETE para cada rota
    Remove um status
    Remove um pedido

TC-API-04: Executa e valida as requisições PATCH para cada rota
    Edita um status
    Edita um pedido
