*** Settings ***
Resource    ../Resource/Settings.resource


*** Keywords ***
Retorna o id do pedido
    ${id}    Get Text   ${Orders.first_order_id}

    RETURN    ${id}

Acessa a parte dos pedidos
    Click Element    ${Orders.link_orders}

Verifica se tem pelo menos um pedido do usuário de teste
    Wait Until Element Is Visible    ${Orders.first_order}    10
    Element Should Be Visible    ${Orders.first_order}

Verifica se os ingredientes são os mesmos do pedido
    ${order_id}    Retorna o id do pedido
    ${order_nome}    Get Text    //p[@data-testid="nome-${nome}-${order_id}"]
    Should Be Equal    ${nome}    ${order_nome}

Verifica se o status é igual a "Solicitado"
    ${order_id}    Retorna o id do pedido
    ${order_status}    Get Value    //select[@data-testid="status-${order_id}"]
    Should Be Equal    Solicitado    ${order_status}

Troca o status do pedido
    ${order_id}    Retorna o id do pedido
    ${xpath}   Set Variable    //select[@data-testid="status-${order_id}"]
    Click Element    ${xpath}
    Press Keys    ${xpath}    ARROW_DOWN
    Press Keys    ${xpath}    ARROW_DOWN
    Press Keys    ${xpath}    ENTER
    ${status_value}  Get Value  //select[@data-testid="status-${order_id}"]

    Should Be Equal    Finalizado    ${status_value}    

Então espera que apareça uma mensagem temporária 
    Element Should Be Visible    ${Orders.message_notify}
    Sleep    4s
    Element Should Not Be Visible    ${Orders.message_notify}

Cancela o pedido
    ${id}    Retorna o id do pedido
    Click Element    //input[@data-testid="submit-${id}"]
        