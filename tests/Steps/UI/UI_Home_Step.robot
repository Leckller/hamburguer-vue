*** Settings ***
Resource    ../Resource/Settings.resource


*** Keywords ***
Acessa a hamburgueria
    Open Browser    url=${url}    browser=${browser}

Insere o nome do usuário
    Input Text    locator=${Home.input_nome}    text=${nome}

Escolhe o tipo do pao
    Click Element    locator=${Home.input_pao}
    Press Keys    ${Home.input_pao}    ARROW_DOWN
    Press Keys    ${Home.input_pao}    ARROW_DOWN

Escolhe o tipo da carne
    Click Element    locator=${Home.input_carne}
    Press Keys    ${Home.input_carne}    ARROW_DOWN
    Press Keys    ${Home.input_carne}    ARROW_DOWN

Adiciona Bacon e Cebola roxa
    Click Element    locator=${Home.input_bacon}
    Click Element    locator=${Home.input_cebola}

Clica no botão de criar hamburguer
    Click Element    locator=${Home.input_submit}

Então espera que apareça uma mensagem temporária confirmando o pedido
    Element Should Be Visible    locator=${Home.message_notify}
    Sleep    4s
    Element Should Not Be Visible    locator=${Home.message_notify}

Fecha a hamburgueria
    Close Browser
