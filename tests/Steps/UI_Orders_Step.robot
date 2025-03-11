*** Settings ***
Resource    ../Resource/Settings.resource


*** Keywords ***
Acessa a parte dos pedidos
    Click Element    ${Orders.link_orders}

Verifica se tem pelo menos um pedido do usuário de teste
    Wait Until Element Is Visible    ${Orders.first_order}    10

Verifica se os ingredientes são os mesmos do pedido

Verifica se o status é Solicitado

Troca o status do pedido

Então espera que apareça uma mensagem temporária confirmando que o pedido foi atualizado

Cancela o pedido

Então espera que apareça uma mensagem temporária confirmando que o pedido foi apagado
