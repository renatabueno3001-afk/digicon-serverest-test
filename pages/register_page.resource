*** Settings ***
Library    SeleniumLibrary
Resource    ../objects/register_page_objects.resource
Resource    ../objects/home_page_objects.resource

*** Keywords ***
Abrir página de cadastro
    Wait Until Element Is Visible    ${LINK_CADASTRO}    timeout=10s
    Click Element    ${LINK_CADASTRO}
    Wait Until Element Is Visible    ${CAMPO_NOME}    timeout=10s

Preencher cadastro de cliente
    [Arguments]    ${nome}    ${email}    ${senha}
    Input Text    ${CAMPO_NOME}    ${nome}
    Input Text    ${CAMPO_EMAIL}    ${email}
    Input Password    ${CAMPO_SENHA}    ${senha}

Enviar cadastro
    Click Button    ${BOTAO_CADASTRAR}

Cadastro foi confirmado
    Wait Until Element Is Visible    ${TITULO_LOJA}    timeout=15s



