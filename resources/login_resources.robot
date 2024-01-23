*** Settings ***
Resource          ../pages/login_page.robot

*** Keywords ***
Dado que o usuario acesse a tela de login
    Acessar site "https://phptravels.org/login"
Quando o usuario informar email "${EMAIL}"
    Informar email "${EMAIL}"
E informar senha "${SENHA}"
    Informar senha "${SENHA}"
E confirmar a verficação 
    Confirmar captcha
E clicar em Login
    Clicar no botao de Login 
Então o usuario é direcionado para a home como "${USUARIO_LOGADO}"
    Validar pagina inicial "${USUARIO_LOGADO}"
