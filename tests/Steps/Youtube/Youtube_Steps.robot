*** Settings ***
Resource    ../Main_Steps.robot


*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    url=${url_youtube}    browser=${browser}

Quando digito o nome da música
    Input Text    locator=${youtube_search_input}    text=${music}

E clico no botão buscar
    Press Keys    ${youtube_search_input}    ENTER

E clico na primeira opção da lista
    Wait Until Element Is Visible    ${first_video}    10
    Element Should Be Visible    ${first_video}
    Click Element    ${first_video}

Então o video é executado
    Wait Until Element Is Visible    ${video}
    Element Should Be Visible    ${video}
    Sleep    3s
    Close Browser
