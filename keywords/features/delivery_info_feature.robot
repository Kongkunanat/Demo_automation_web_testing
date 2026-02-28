*** Settings ***
Resource    ../import.robot

*** Keywords ***
Input Fill Delivery info field
    [Arguments]    ${name}        ${surname}        ${address}     ${telephone} 
    delivery_info_page.Input Fill Delivery info field   ${name}   ${surname}    ${address}    ${telephone} 
    delivery_info_page.Click Pay Button