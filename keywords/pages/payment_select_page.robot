*** Settings ***
Resource    ../import.robot


*** Keywords ***

Select Payment Method
    seleniumlibrary.Wait Until Element Is Enabled    ${payment_select_locator.select_credit_card}       ${GLOBAL_TIMOUT}
    seleniumlibrary.Click Button    ${payment_select_locator.select_credit_card}   

Click Next Button 
    seleniumlibrary.Wait Until Page Contains Element  ${payment_select_locator.button_next}    ${GLOBAL_TIMOUT}
    seleniumlibrary.Click Element    ${payment_select_locator.button_next} 


