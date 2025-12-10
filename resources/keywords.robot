*** Settings ***
Library    SeleniumLibrary
Resource   variables.robot


*** Keywords ***
Abrir Navegador e ir a la web Saucedemo Login
    Open Browser                     ${SAUCEDEMO_URL_LOGIN}                                                      ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${SAUCEDEMO_LOGO}
    Sleep    2s
    #Close Browser

ir a la web Saucedemo Page Productos
    Go To    ${SAUCEDEMO_URL_PRODUCTOS}
    Wait Until Page Contains    ${ERROR_BYPASS}    timeout=10s
    
    