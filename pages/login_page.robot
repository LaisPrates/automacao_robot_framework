*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${TXT_EMAIL}                            //input[@type='email']  
${TXT_SENHA}                            //input[@name='password']
${IFRAME}                           //iframe[@title='reCAPTCHA']
${BNT_NAO_SOU_ROBO}                 //span[@id='recaptcha-anchor']
${BNT_LOGIN}                        //button[@class='btn btn-primary btn-recaptcha']


*** Keywords ***   
# Test Setup e Test Teardown -----------------------

Fechar o navegador
    Close Browser
#---------------------------------------------------

Acessar site "${SITE}"
   Open Browser                     ${SITE}    browser=chrome
   Maximize Browser Window

Informar email "${EMAIL}"
   Wait Until Element Is Visible    ${TXT_EMAIL}
   Input Text                       ${TXT_EMAIL}    ${EMAIL}

Informar senha "${SENHA}"
   Wait Until Element Is Visible    ${TXT_SENHA}
   Input Password                   ${TXT_SENHA}    ${SENHA}

Confirmar captcha
   Select Frame                     ${IFRAME}
   Wait Until Element Is Visible    ${BNT_NAO_SOU_ROBO}
   Click Element                    ${BNT_NAO_SOU_ROBO}
   Unselect Frame

Clicar no botao de Login   
   Sleep     3
   Click Element                    ${BNT_LOGIN}

Validar pagina inicial "${NOME_LOGADO}"
    Element Should Be Visible    locator=//*[text()='Logged in as:']/../..//*[contains(text(),'${NOME_LOGADO}')]
    