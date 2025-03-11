*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${google_url}       https://www.google.com/
${google_input}     APjFqb


*** Test Cases ***
TC-01: Abre o google pesquisa por My Hero Academia e fecha.
    Abrir navegador ${google_url}
    Digitar ${google_input} My Hero Academia
    Aperta ENTER em um elemento especifico ${google_input}


*** Keywords ***
Abrir navegador ${url}
    Open Browser    url=${url}    browser=chrome

Fechar navegador
    Close Browser

Digitar ${locator} ${text}
    Input Text    locator=${locator}    text=${text}

Aperta ENTER em um elemento especifico ${locator}
    Press Keys    ${locator}    ENTER
