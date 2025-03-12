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
${url}                  http://localhost:8080
${browser}              chrome

# Id Geral
${id_teste}             id123teste

# Tipo do status
${tipo}                 cancelado
${tipo_patch}           atrasado

# Body do novo hamburguer
${nome}                 Usuario_Teste
${carne}                {id: 1, tipo: Maminha}
${pao}                  {id: 1, tipo: Italiano Branco}
${opcionais}            [Bacon, Cebola roxa]
${status}               "Solicitado"

${nome_patch}           Usuario_Teste_patch
${carne_patch}          {id: 2, tipo: Alcatra}
${pao_patch}            {id: 2, tipo: 3 Queijos}
${opcionais_patch}      [Salame, Tomate]
