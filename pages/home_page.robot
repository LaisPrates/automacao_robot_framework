*** Settings ***
Library     SeleniumLibrary

*** Keywords ***   

Validar pagina inicial "${NOME_LOGADO}"
    Element Should Be Visible    locator=//*[text()='Logged in as:']/../..//*[contains(text(),'${NOME_LOGADO}')]
    