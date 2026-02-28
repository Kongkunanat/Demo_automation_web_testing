*** Settings ***
Resource    ../import.robot
*** Keywords ***
Login
    [Arguments]    ${email_register}     ${password_register} 
    login_page.Input with the registered account  ${email_register}     ${password_register} 
    login_page.Click Submit Button  
    common.Confirm On Dialog



