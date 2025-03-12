*** Settings ***
Library     RequestsLibrary
Library     SeleniumLibrary
Resource    Api_Paths.resource
Resource    UI_Home_Elements.resource
Resource    UI_Orders_Elements.resource
Resource    ../Steps/Api/Api_Get_Step.robot
Resource    ../Steps/Api/Api_Post_Step.robot
Resource    ../Steps/Api/Api_Patch_Step.robot
Resource    ../Steps/Api/Api_Delete_Step.robot
Resource    ../Steps/UI/UI_Home_Step.robot
Resource    ../Steps/UI/UI_Orders_Step.robot


*** Variables ***
${url}          http://localhost:8080
${nome}         Usuario_Teste
${browser}      chrome
${id_teste}     id123teste
