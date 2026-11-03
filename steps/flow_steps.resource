*** Settings ***
Resource    ../pages/register_page.resource
Resource    ../pages/login_page.resource
Resource    ../pages/home_page.resource
Resource    ../pages/shopping_list_page.resource

*** Keywords ***
Dado que estou na página inicial do ServeRest
    Wait Until Element Is Visible    ${LINK_CADASTRO}    timeout=10s

Quando cadastro um cliente com dados gerados pelo Faker
    ${nome}=    FakerLibrary.Name
    ${email}=    FakerLibrary.Email
    ${senha}=    Set Variable    Senha123
    Set Test Variable    ${EMAIL_CADASTRO}    ${email}
    Set Test Variable    ${SENHA_CADASTRO}    ${senha}
    Log To Console    E-mail criado para o teste: ${email}
    Abrir página de cadastro
    Preencher cadastro de cliente    ${nome}    ${email}    ${senha}
    Enviar cadastro

Então o cadastro é confirmado
    Cadastro foi confirmado

Quando faço logout e entro com o cliente recém-cadastrado
    Sair da conta
    Abrir página de login
    Entrar com as credenciais    ${EMAIL_CADASTRO}    ${SENHA_CADASTRO}

Então vejo a loja
    Loja foi exibida

Quando adiciono o primeiro produto à lista de compras
    Adicionar primeiro produto à lista de compras

Então o produto escolhido aparece na lista de compras
    Produto escolhido aparece na lista de compras


