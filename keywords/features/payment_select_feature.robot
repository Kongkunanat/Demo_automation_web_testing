*** Settings ***
Resource    ../import.robot


*** Keywords ***
Select Method For Payment
    payment_select_page.Select Payment Method
    payment_select_page.Click Next Button 