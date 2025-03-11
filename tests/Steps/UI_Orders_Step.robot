*** Settings ***
Resource    ../Resource/Settings.resource


*** Keywords ***
Retorna o id do pedido
    ${id}    Get Value    ${Orders.first_order_id}

    RETURN    ${id}

Acessa a parte dos pedidos
    Click Element    ${Orders.link_orders}

Verifica se tem pelo menos um pedido do usuário de teste
    Wait Until Element Is Visible    ${Orders.first_order}    10

Verifica se os ingredientes são os mesmos do pedido
    ${order_id}    Retorna o id do pedido
    ${order_nome}    Get Value    //p[@data-testid="nome-${nome}-${order_id}"]
    Should Be Equal    ${nome}    ${order_nome}

Verifica se o status é igual a "Solicitado"
    ${order_id}    Retorna o id do pedido
    ${order_status}    Get Value    //p[@data-testid="status-${order_id}"]

Troca o status do pedido

Então espera que apareça uma mensagem temporária confirmando que o pedido foi atualizado

Cancela o pedido

Então espera que apareça uma mensagem temporária confirmando que o pedido foi apagado
