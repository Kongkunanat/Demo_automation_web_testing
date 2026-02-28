*** Settings ***
Resource    ../import.robot


*** Keywords ***
Input Fill Delivery info field
    [Arguments]    ${name}   ${surname}    ${address}    ${telephone} 

    SeleniumLibrary.Wait Until Page Contains Element  ${delivery_locator.Icon_cart}     ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${delivery_locator.Icon_cart} 


    SeleniumLibrary.Wait Until Element Is Visible     ${delivery_locator.load_data}       ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text    ${delivery_locator.name}   ${name} 

    SeleniumLibrary.Wait Until Element Is Visible      ${delivery_locator.surname}   ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text    ${delivery_locator.surname}   ${surname}

    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_locator.address}     ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text   ${delivery_locator.address}    ${address} 

    SeleniumLibrary.Wait Until Element Is Visible    ${delivery_locator.phone}     ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text    ${delivery_locator.phone}    ${telephone}


Click Pay Button
    SeleniumLibrary.Wait Until Page Contains Element    ${delivery_locator.pay_button}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${delivery_locator.pay_button}  





