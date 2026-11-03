*** Settings ***
Library    SeleniumLibrary
Resource    ../objects/login_page_objects.resource

*** Keywords ***
Abrir página de login
    Go To    ${URL}login
    Wait Until Element Is Visible    ${TITULO_LOGIN}    timeout=10s

Entrar com as credenciais
    [Arguments]    ${email}    ${senha}
    Input Text    ${CAMPO_LOGIN_EMAIL}    ${email}
    Input Password    ${CAMPO_LOGIN_SENHA}    ${senha}
    Click Button    ${BOTAO_ENTRAR}

Loja foi exibida
    Wait Until Element Is Visible    ${TITULO_LOJA}    timeout=10s

