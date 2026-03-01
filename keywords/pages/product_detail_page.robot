*** Settings ***
Resource    ../import.robot


*** Keywords ***
Add Item To Cart  
    seleniumlibrary.Wait Until Page Contains Element    ${product_datail_locator.button_add_to_cart}      ${GLOBAL_TIMOUT}
    seleniumlibrary.Click Element    ${product_datail_locator.button_add_to_cart} 





