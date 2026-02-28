*** Settings ***
Resource    ../import.robot


*** Keywords ***
Add To Cart
    product_detail_page.Add Item To Cart 
    common.Confirm On Dialog