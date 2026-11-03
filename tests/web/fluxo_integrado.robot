*** Settings ***
Documentation    Fluxo integrado: cadastro, login e inclusão de produto na lista de compras.
Resource         ../../../resources/configs/qa.resource
Resource         ../../../steps/flow_steps.resource
Library          SeleniumLibrary
Library          FakerLibrary
Test Setup       Open Browser    ${URL}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***
Fluxo completo de cliente e produto
    [Tags]    E2E    CADASTRO    LOGIN    CARRINHO
    Dado que estou na página inicial do ServeRest
    Quando cadastro um cliente com dados gerados pelo Faker
    Então o cadastro é confirmado
    Quando faço logout e entro com o cliente recém-cadastrado
    Então vejo a loja
    Quando adiciono o primeiro produto à lista de compras
    Então o produto escolhido aparece na lista de compras


