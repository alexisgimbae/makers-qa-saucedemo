*** Settings ***
Resource   variables.robot
Resource   keywords.robot
Library    DateTime 

*** Test Cases ***
TC_001: SQL Injection en campos de login "Username"
    [Tags]                           TC_001
    Abrir Navegador e ir a la web Saucedemo Login
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Input Text      ${USERNAME_INPUT}    ${SQL_INJECTION_PAYLOAD_1}
    Input Text      ${PASSWORD_INPUT}    ${VALID_PASSWORD}
    Click Element   ${LOGIN_BUTTON}
    Wait Until Page Contains    ${INVALID_LOGIN_MESSAGE}    timeout=10s
    Capture Page Screenshot    screenshots/saucedemo_${timestamp}.png
    Close Browser

TC_002: Login fallido con contraseña errónea
    [Tags]                           TC_002
    Abrir Navegador e ir a la web Saucedemo Login
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Input Text      ${USERNAME_INPUT}    ${VALID_USERNAME}
    Input Text      ${PASSWORD_INPUT}    ${SQL_INJECTION_PAYLOAD_2}
    Click Element   ${LOGIN_BUTTON}
    Wait Until Page Contains    ${INVALID_LOGIN_MESSAGE}    timeout=10s
    Capture Page Screenshot    screenshots/saucedemo_${timestamp}.png
    Close Browser

TC_003: Authentication Bypass
    [Tags]                           TC_003
    Abrir Navegador e ir a la web Saucedemo Login
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Input Text      ${USERNAME_INPUT}    ${VALID_USERNAME}
    Input Text      ${PASSWORD_INPUT}    ${VALID_PASSWORD}
    Click Element   ${LOGIN_BUTTON}
    Wait Until Page Contains    ${PRODUCTS_PAGE_TITLE}    timeout=10s
    Sleep     2s
    Capture Page Screenshot    screenshots/saucedemo_productos${timestamp}.png
    Sleep    2s
    Click Element    ${BURGER_BUTTON}
    Sleep    2s
    Click Element    ${LOGOUT_BUTTON}
    Wait Until Element Is Visible    ${SAUCEDEMO_LOGO}
    Capture Page Screenshot    screenshots/saucedemo_login${timestamp}.png
    Go To    ${SAUCEDEMO_URL_PRODUCTOS}
    ir a la web Saucedemo Page Productos
    Capture Page Screenshot    screenshots/bypass_${timestamp}.png
    Close Browser

