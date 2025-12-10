*** Settings ***
Resource   variables.robot
Resource   keywords.robot
Library    DateTime 

*** Test Cases ***
TC_001: Login con usuario admin válido
    [Tags]                           TC_001
    Abrir Navegador e ir a la web Saucedemo Login
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Input Text      ${USERNAME_INPUT}    ${VALID_USERNAME}
    Input Text      ${PASSWORD_INPUT}    ${VALID_PASSWORD}
    Click Element   ${LOGIN_BUTTON}
    Wait Until Page Contains    ${PRODUCTS_PAGE_TITLE}    timeout=10s
    Capture Page Screenshot    screenshots/saucedemo_${timestamp}.png
    Close Browser

TC_002: Login fallido con contraseña errónea
    [Tags]                           TC_002
    Abrir Navegador e ir a la web Saucedemo Login
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Input Text      ${USERNAME_INPUT}    ${VALID_USERNAME}
    Input Text      ${PASSWORD_INPUT}    ${INVALID_PASSWORD}
    Click Element   ${LOGIN_BUTTON}
    Wait Until Page Contains    ${INVALID_LOGIN_MESSAGE}    timeout=10s
    Capture Page Screenshot    screenshots/saucedemo_${timestamp}.png
    Close Browser

TC_003: Login fallido con usuario erróneo
    [Tags]                           TC_003
    Abrir Navegador e ir a la web Saucedemo Login
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Input Text      ${USERNAME_INPUT}    ${INVALID_USERNAME}
    Input Text      ${PASSWORD_INPUT}    ${VALID_PASSWORD}
    Click Element   ${LOGIN_BUTTON}
    Wait Until Page Contains    ${INVALID_LOGIN_MESSAGE}    timeout=10s
    Capture Page Screenshot    screenshots/saucedemo_${timestamp}.png
    Close Browser

TC_004: Validación de campos Username vacío
    [Tags]                           TC_004
    Abrir Navegador e ir a la web Saucedemo Login
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Input Text      ${PASSWORD_INPUT}    ${VALID_PASSWORD}
    Click Element   ${LOGIN_BUTTON}
    Wait Until Page Contains    ${ERROR_USERNAME_REQUIRED}    timeout=10s
    Capture Page Screenshot    screenshots/saucedemo_${timestamp}.png
    Close Browser

TC_005: Validación de campos Password vacío
    [Tags]                           TC_005
    Abrir Navegador e ir a la web Saucedemo Login
    ${timestamp}=    Get Current Date    result_format=%Y%m%d_%H%M%S
    Input Text      ${USERNAME_INPUT}    ${VALID_USERNAME}
    Click Element   ${LOGIN_BUTTON}
    Wait Until Page Contains    ${ERROR_PASSWORD_REQUIRED}    timeout=10s
    Capture Page Screenshot    screenshots/saucedemo_${timestamp}.png
    Close Browser