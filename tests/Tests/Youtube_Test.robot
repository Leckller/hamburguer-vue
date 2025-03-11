*** Settings ***
Resource    ../Steps/Main_Steps.robot


*** Test Cases ***
TC-01: Busca, acessa e da um play em um vídeo do youtube
    [Tags]    regressivo
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o video é executado
