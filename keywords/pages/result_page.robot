*** Settings ***
Resource    ../import.robot


*** Keywords ***
Verify finish button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${result_locator.btn_finish}    ${GLOBAL_TIMOUT}

Verify cancel button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${result_locator.btn_cancel}    ${GLOBAL_TIMOUT}

Verify title header is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${result_locator.lbl_header}      ${GLOBAL_TIMOUT}

Verify title quantity is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${result_locator.lbl_quantity}      ${GLOBAL_TIMOUT}

Verify title description is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${result_locator.lbl_description}      ${GLOBAL_TIMOUT}

Verify title shipping information is displayed
    Scroll until element visible    locator=${result_locator.lbl_shipping_info}

Verify detail of product is displayed correctly
    [Arguments]    ${products}
    FOR    ${product}    IN    @{products}
        ${locator}    string.Replace string    string=${result_locator.lbl_information_product}    search_for=***name***    replace_with=${product.name}
        ${locator}    string.Replace string    string=${locator}    search_for=***price***    replace_with=${product.price}
        seleniumlibrary.Wait Until Element Is Visible    ${locator}    ${GLOBAL_TIMOUT}
    END

Verify total price is displayed correctly
    [Arguments]    ${cart_products}
    ${total}    builtin.Evaluate    sum(float(item['price']) for item in $cart_products)
    #total = 0
    #for item in cart_products:
    #   total += float(item['price'])
    ${total}    builtin.Convert to string    ${total}
    ${locator}    string.Replace string    string=${result_locator.lbl_product_price}    search_for=***price***    replace_with=${total}
    seleniumlibrary.Wait Until Element Is Visible    ${locator}    ${GLOBAL_TIMOUT}

Tap finish button
    seleniumlibrary.Click Element    ${result_locator.btn_finish}

Tap cancel button
    seleniumlibrary.Click Element    ${result_locator.btn_cancel}
