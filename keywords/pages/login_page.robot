*** Settings ***
Resource    ../import.robot


*** Keywords ***
Verify input username text box is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${login_locator.txt_username}    ${GLOBAL_TIMOUT}

Verify input password text box is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${login_locator.txt_password}    ${GLOBAL_TIMOUT}

Verify login button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${login_locator.txt_password}    ${GLOBAL_TIMOUT}

Input username
    [Arguments]    ${txt_username} 
    seleniumlibrary.Input Text     ${login_locator.txt_username}     ${txt_username}

Input password
    [Arguments]    ${txt_password}    
    seleniumlibrary.Input Text     ${login_locator.txt_password}     ${txt_password} 

Tap login button
    seleniumlibrary.Click Element    ${login_locator.btn_login}
