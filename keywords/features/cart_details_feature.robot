*** Settings ***
Resource    ../import.robot

*** Keywords ***
Verify details of cart details page is displayed then tap checkout button
    [Arguments]    ${cart_products}
    cart_details_page.Verify continue shopping button is displayed
    cart_details_page.Verify check out button is displayed
    cart_details_page.Verify title header is displayed
    cart_details_page.Verify title quantity is displayed
    cart_details_page.Verify title description is displayed
    cart_details_page.Verify remove button of each product is displayed    products=${cart_products}
    cart_details_page.Verify detail of product is displayed correctly    products=${cart_products}
    cart_details_page.Tap checkout button