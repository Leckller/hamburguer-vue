*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url_youtube}              https://www.youtube.com/
${browser}                  chrome
${youtube_search_input}     search_query
${music}                    Every Breath You Take
${first_video}              (//ytd-video-renderer[@class="style-scope ytd-item-section-renderer"])[1]
${video}                    //video[@class="video-stream html5-main-video"]


*** Test Cases ***
TC-01: Busca, acessa e da um play em um vídeo do youtube
    [Tags]    regressivo
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o video é executado


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
