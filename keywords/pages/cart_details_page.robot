*** Settings ***
Resource    ../import.robot


*** Keywords ***
Verify continue shopping button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${cart_details_locator.btn_continue_shopping}    ${GLOBAL_TIMOUT}

Verify check out button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${cart_details_locator.btn_check_out}    ${GLOBAL_TIMOUT}

Verify title header is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${cart_details_locator.lbl_header}      ${GLOBAL_TIMOUT}

Verify title quantity is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${cart_details_locator.lbl_quantity}      ${GLOBAL_TIMOUT}

Verify title description is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${cart_details_locator.lbl_description}      ${GLOBAL_TIMOUT}

Verify detail of product is displayed correctly
    [Arguments]    ${products}
    FOR    ${product}    IN    @{products}
        ${locator}    string.Replace string    string=${cart_details_locator.lbl_information_product}    search_for=***name***    replace_with=${product.name}
        ${locator}    string.Replace string    string=${locator}    search_for=***price***    replace_with=${product.price}
        seleniumlibrary.Wait Until Element Is Visible    ${locator}    ${GLOBAL_TIMOUT}
    END

Verify remove button of each product is displayed
    [Arguments]    ${products}
    FOR    ${product}    IN    @{products}
        ${locator}    string.Replace string    string=${cart_details_locator.btn_remove_product}    search_for=***name***    replace_with=${product.name}
        ${locator}    string.Replace string    string=${locator}    search_for=***price***    replace_with=${product.price}
        seleniumlibrary.Wait Until Element Is Visible    ${locator}    ${GLOBAL_TIMOUT}
    END

Tap checkout button
    seleniumlibrary.Click Element    ${cart_details_locator.btn_check_out}

Tap continue shopping button
    seleniumlibrary.Click Element    ${cart_details_locator.btn_continue_shopping}
