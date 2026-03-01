*** Settings ***
Resource    ../import.robot


*** Keywords ***

Input Data For Sign Up
    [Arguments]    ${email}   ${password}  ${password_confirm}  
    seleniumlibrary.Input Text    ${register_locator.email}      ${email}
    seleniumlibrary.Input Text    ${register_locator.password}      ${password}  
    seleniumlibrary.Input Text    ${register_locator.confirm_password}       ${password_confirm}  


ฺClick Sign Up Button 
    seleniumlibrary.Click Button     ${register_locator.button_signup} 



Click Ok Button 
    seleniumlibrary.Wait Until Element Is Enabled    ${register_locator.button_Ok}      ${GLOBAL_TIMOUT}
    seleniumlibrary.Click Button     ${register_locator.button_Ok} 

