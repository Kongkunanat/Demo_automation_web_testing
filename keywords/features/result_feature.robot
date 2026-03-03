*** Settings ***
Resource    ../import.robot

*** Keywords ***
Verify details of result page is displayed then tap finish button
    [Arguments]    ${cart_products}
    result_page.Verify finish button is displayed
    result_page.Verify cancel button is displayed
    result_page.Verify title header is displayed
    result_page.Verify title quantity is displayed
    result_page.Verify title description is displayed
    result_page.Verify detail of product is displayed correctly    products=${cart_products}
    result_page.Verify title shipping information is displayed
    result_page.Verify total price is displayed correctly    cart_products=${cart_products}
    result_page.Tap finish button