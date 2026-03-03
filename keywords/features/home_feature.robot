*** Settings ***
Resource    ../import.robot

*** Keywords ***
Verify details of home page is displayed
    common.Verify label header of top page is displayed by expected text    expected_text=${home_page.lbl_header}
    home_page.Verify cart icon is displayed
    home_page.Verify menu icon is displayed
    home_page.Verify filter dropdown is displayed
    home_page.Verify title of home page is displayed correctly    expected_text=${home_page.lbl_products}
    home_page.Verify not empty list of product is displayed
    home_page.Tap menu icon
    home_page.Verify close submenu button is displayed
    home_page.Verify all submenu of menu is displayed   list_sub_menu=${sub_menu}
    home_page.Tap close submenu
    home_page.Tap filter menu dropdown
    home_page.Verify all filter menu is displayed   filter_menu=${filter_menu}
    home_page.Verify all product is displayed   products=${products}
    home_page.Verify footer of home page is displayed

Add product to cart by product name
    [Arguments]    ${product_name}
    home_page.Tap add product to cart by product name    product_name=${product_name}
    home_page.Verify remove button is displayed by product name    product_name=${product_name}
    ${price}    home_page.Get product price    product_name=${product_name}
    home_page.Verify count of product in cart is displayed correctly    count_of_products=${count_products}
    ${cart_product}    Create Dictionary
    ...    name=${product_name}
    ...    price=${price}
    collections.Append to list    ${cart_products}    ${cart_product}
