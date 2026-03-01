*** Settings ***
Resource    ../import.robot


*** Keywords ***
Input credit card
    [Arguments]    ${CardNumber}   ${EXP}    ${CVC}    ${CardOwner} 
    seleniumlibrary.Wait Until Page Contains Element     ${payment_credit_locator.input_number}      ${GLOBAL_TIMOUT}
    ${CardNumberNoSpace}=    Remove String    ${CardNumber}    ${SPACE}
    seleniumlibrary.Input Text      ${payment_credit_locator.input_number}       ${CardNumberNoSpace}


    seleniumlibrary.Wait Until Page Contains Element     ${payment_credit_locator.input_exp}      ${GLOBAL_TIMOUT}
    seleniumlibrary.Input Text      ${payment_credit_locator.input_exp}       ${EXP}

    seleniumlibrary.Wait Until Page Contains Element     ${payment_credit_locator.input_cvc}      ${GLOBAL_TIMOUT}
    seleniumlibrary.Input Text     ${payment_credit_locator.input_cvc}        ${CVC}

    seleniumlibrary.Wait Until Page Contains Element     ${payment_credit_locator.input_basic_owner}      ${GLOBAL_TIMOUT}
    seleniumlibrary.Input Text      ${payment_credit_locator.input_basic_owner}      ${CardOwner}


Click Confirm Button 
    seleniumlibrary.Wait Until Page Contains Element     ${payment_credit_locator.confirm_button}  ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${payment_credit_locator.confirm_button} 



