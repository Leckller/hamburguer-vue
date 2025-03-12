*** Settings ***
Library     RequestsLibrary
Library     SeleniumLibrary
Resource    Api_Paths.resource
Resource    UI_Home_Elements.resource
Resource    UI_Orders_Elements.resource
Resource    ../Steps/UI_Home_Step.robot
Resource    ../Steps/UI_Orders_Step.robot


*** Variables ***
${url}          http://localhost:8080
${nome}         Usuario_Teste
${browser}      chrome
