*** Settings ***
Library     RequestsLibrary
Library     SeleniumLibrary
Resource    UI_Elements.resource
Resource    ../Steps/UI_Step.robot


*** Variables ***
${url}          http://localhost:8080
${nome}         Usuario_Teste
${browser}      chrome
