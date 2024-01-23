*** Settings ***
Documentation        Testes focados em realizar o login no phptravels
Resource          ../resources/login_resources.robot
Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Realizar login
    [Documentation]     Deve ser realizado o login na phptravels
    ...                 E validado se o usuario que preencheu os dados logou com sucesso
    [Tags]     login        
    Dado que o usuario acesse a tela de login 
    Quando o usuario informar email "lalaisprates@gmail.com"
    E informar senha "Senha123456"
    E confirmar a verficação 
    E clicar em Login
    Então o usuario é direcionado para a home como "Laís Araújo"
