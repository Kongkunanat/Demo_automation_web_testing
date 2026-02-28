*** Settings ***
Resource    ../import.robot

*** Keywords ***
Input Credit And Card Info And Make Payment
    [Arguments]    ${card_number}     ${EXP}     ${CVC}     ${CardOwner} 
    payment_credit_page.Input credit card    ${card_number}    ${EXP}    ${CVC}    ${CardOwner} 
    payment_credit_page.Click Confirm Button 
    common.Confirm On Dialog



