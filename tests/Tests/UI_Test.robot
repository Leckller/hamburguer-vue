*** Settings ***
Resource    ../Resource/Settings.resource


*** Test Cases ***
TC-UI-01: Testa se existem os devidos inputs
    Acessa a hamburgueria

    Insere o nome do usuário

    Escolhe o tipo do pao

    Escolhe o tipo da carne

    Adiciona Bacon e Cebola roxa

    Clica no botão de criar hamburguer

    Então espera que apareça uma mensagem temporária confirmando o pedido

    Fecha a hamburgueria

TC_UI-02: Testa se o pedido apareceu na parte página /orders
    Acessa a hamburgueria

    Acessa a parte dos pedidos

    Verifica se tem pelo menos um pedido do usuário de teste

    Verifica se os ingredientes são os mesmos do pedido

    Verifica se o status é igual a "Solicitado"

    Fecha a hamburgueria

TC_UI-03: Testa as funções dos pedidos da página /orders
    Acessa a hamburgueria

    Acessa a parte dos pedidos

    Verifica se tem pelo menos um pedido do usuário de teste

    Troca o status do pedido

    Então espera que apareça uma mensagem temporária confirmando que o pedido foi atualizado

    Cancela o pedido

    Então espera que apareça uma mensagem temporária confirmando que o pedido foi apagado

    Fecha a hamburgueria
