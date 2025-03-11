*** Settings ***
Resource    ../Resource/Settings.resource


*** Keywords ***
Acessa a hamburgueria
    Open Browser    url=${url}    browser=${browser}

Insere o nome do usuário
    Input Text    locator=${UI.input_nome}    text=${nome}

Escolhe o tipo do pao
    Click Element    locator=${UI.input_pao}
    Press Keys    ${UI.input_pao}    ARROW_DOWN
    Press Keys    ${UI.input_pao}    ARROW_DOWN

Escolhe o tipo da carne
    Click Element    locator=${UI.input_carne}
    Press Keys    ${UI.input_carne}    ARROW_DOWN
    Press Keys    ${UI.input_carne}    ARROW_DOWN

Adiciona Bacon e Cebola roxa
    Click Element    locator=${UI.input_bacon}
    Click Element    locator=${UI.input_cebola}

Clica no botão de criar hamburguer
    Click Element    locator=${UI.input_submit}

Então espera que apareça uma mensagem temporária confirmando o pedido
    Element Should Be Visible    locator=${UI.message_notify}
    Sleep    4s
    Element Should Not Be Visible    locator=${UI.message_notify}

Fecha o browser
    Close Browser
