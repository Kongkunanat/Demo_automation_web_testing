*** Settings ***
Resource    ../import.robot


*** Keywords ***
Verify continue button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${information_locator.btn_continue}    ${GLOBAL_TIMOUT}

Verify cancel button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${information_locator.btn_cancel}    ${GLOBAL_TIMOUT}

Verify title header is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${information_locator.lbl_header}      ${GLOBAL_TIMOUT}

Verify input first name text box is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${information_locator.txt_first_name}      ${GLOBAL_TIMOUT}

Verify input last name text box is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${information_locator.txt_last_name}      ${GLOBAL_TIMOUT}

Verify input zip code text box is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${information_locator.txt_zip_code}      ${GLOBAL_TIMOUT}

Input first name
    [Arguments]    ${txt_username} 
    seleniumlibrary.Input Text     ${information_locator.txt_first_name}     ${txt_username}

Input last name
    [Arguments]    ${txt_last_name}    
    seleniumlibrary.Input Text     ${information_locator.txt_last_name}     ${txt_last_name} 

Input zip code
    [Arguments]    ${txt_zip_code}    
    seleniumlibrary.Input Text     ${information_locator.txt_zip_code}     ${txt_zip_code}

Tap cancel button
    seleniumlibrary.Click Element    ${information_locator.btn_cancel}

Tap continue button
    seleniumlibrary.Click Element    ${information_locator.btn_continue}
