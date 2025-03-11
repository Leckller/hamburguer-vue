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

    Fecha o browser
