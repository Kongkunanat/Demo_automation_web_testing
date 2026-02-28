*** Settings ***
Resource    ../import.robot


*** Keywords ***
Sign up
    [Arguments]    ${email_register}        ${password_register}        ${password_register} 
    register_page.Input Data For Sign Up    ${email_register}        ${password_register}        ${password_register} 
    register_page.ฺClick Sign Up Button 
    common.Confirm On Dialog



