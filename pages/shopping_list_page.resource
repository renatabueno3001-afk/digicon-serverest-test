*** Settings ***
Library    SeleniumLibrary
Resource    ../objects/shopping_list_page_objects.resource

*** Keywords ***
Produto escolhido aparece na lista de compras
    Wait Until Element Is Visible    ${TITULO_LISTA_COMPRAS}    timeout=10s
    Wait Until Page Contains    ${PRODUTO_ESCOLHIDO}    timeout=10s
    Page Should Contain Element    xpath=//div[@data-testid="shopping-cart-product-name" and contains(normalize-space(.), "${PRODUTO_ESCOLHIDO}")]

