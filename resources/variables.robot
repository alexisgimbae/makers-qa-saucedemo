*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# ========== BROWSER ==========
${BROWSER}                  firefox

# ========== SAUCEDEMO ==========
${SAUCEDEMO_URL_LOGIN}            https://www.saucedemo.com
${SAUCEDEMO_URL_PRODUCTOS}        https://www.saucedemo.com/inventory.html
${SAUCEDEMO_LOGO}           css=.login_logo

# ========== LOGIN FORM ELEMENTS ==========
${USERNAME_INPUT}           id=user-name        
${PASSWORD_INPUT}           id=password           
${LOGIN_BUTTON}             id=login-button  
${BURGER_BUTTON}            id=react-burger-menu-btn  
${LOGOUT_BUTTON}            id=logout_sidebar_link   

# ========== TEST CREDENTIALS ==========
${VALID_USERNAME}           standard_user   
${INVALID_USERNAME}         Incorrect_username         
${VALID_PASSWORD}           secret_sauce          
${INVALID_PASSWORD}         wrong_password  
${ERROR_PASSWORD_REQUIRED}  Password is required
${ERROR_USERNAME_REQUIRED}  Username is required  
${ERROR_BYPASS}             You can only access '/inventory.html' when you are logged in.  
# Payloads de SQL Injection
${SQL_INJECTION_PAYLOAD_1}        standard_user' OR '1'='1
${SQL_INJECTION_PAYLOAD_2}        admin' --

# ========== EXPECTED MESSAGES ==========
${INVALID_LOGIN_MESSAGE}    Epic sadface: Username and password do not match any user in this service
${PRODUCTS_PAGE_TITLE}      Sauce Labs Backpack   

