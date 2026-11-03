*** Settings ***
Library    SeleniumLibrary
Resource    ../objects/home_page_objects.resource

*** Keywords ***
Adicionar primeiro produto à lista de compras
    Wait Until Element Is Visible    ${NOME_PRIMEIRO_PRODUTO}    timeout=10s
    ${produto}=    Get Text    ${NOME_PRIMEIRO_PRODUTO}
    Set Test Variable    ${PRODUTO_ESCOLHIDO}    ${produto}
    Click Button    ${BOTAO_ADICIONAR_A_LISTA}
Sair da conta
    Click Button    ${BOTAO_LOGOUT}

