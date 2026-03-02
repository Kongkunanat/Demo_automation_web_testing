*** Settings ***
Resource    ../import.robot


*** Keywords ***
Verify cart icon is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${home_locator.icn_cart}    ${GLOBAL_TIMOUT}

Verify menu icon is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${home_locator.icn_menu}    ${GLOBAL_TIMOUT}

Verify filter dropdown is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${home_locator.ddl_filter}    ${GLOBAL_TIMOUT}

Verify title of home page is displayed correctly
    [Arguments]    ${expected_text}
    seleniumlibrary.Wait Until Element Is Visible  ${home_locator.lbl_title_header}      ${GLOBAL_TIMOUT}
    ${actual_text}    seleniumlibrary.Get Text     ${home_locator.lbl_title_header}
    Should Be Equal As Strings     ${actual_text}     ${expected_text}

Verify not empty list of product is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${home_locator.list_of_product}      ${GLOBAL_TIMOUT}
    ${count}    seleniumlibrary.Get Element Count     ${home_locator.list_of_product}
    Should Be True	${count} > 0     msg=Expected at least one product, but found ${count}

Verify all submenu of menu is displayed
    [Arguments]    ${list_sub_menu}
    FOR    ${item}    IN    @{list_sub_menu}
        ${locator}    string.Replace string    string=${home_locator.lbl_sub_menu_name}    search_for=***lbl_sub_menu***    replace_with=${item}
        seleniumlibrary.Wait Until Page Contains Element  ${locator}     ${GLOBAL_TIMOUT}
    END

Verify all filter menu is displayed
    [Arguments]    ${filter_menu}
    FOR    ${item}    IN    @{filter_menu}
        ${locator}    string.Replace string    string=${home_locator.lbl_filter_menu_name}    search_for=***lbl_filter_menu_name***    replace_with=${item}
        seleniumlibrary.Wait Until Page Contains Element  ${locator}     ${GLOBAL_TIMOUT}
    END

Verify all product is displayed
    [Arguments]    ${products}
    FOR    ${item}    IN    @{products}
        ${locator}    string.Replace string    string=${home_locator.lbl_product_name}    search_for=***lbl_product_name***    replace_with=${item}
        Scroll until element visible    locator=${locator}
    END

Verify close submenu button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${home_locator.icn_close_sub_menu}    ${GLOBAL_TIMOUT}

Verify footer of home page is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${home_locator.lbl_footer_page}    ${GLOBAL_TIMOUT}

Verify count of product in cart is displayed correctly
    [Arguments]    ${count_of_products}
    ${locator}    string.Replace string    string=${home_page.btn_count_of_products}    search_for=***count_of_products***    replace_with=${count_of_products}
    seleniumlibrary.Wait Until Element Is Visible    ${locator}

Verify remove button is displayed by product name
    [Arguments]    ${product_name}
    ${locator}    string.Replace string    string=${home_page.btn_remove_product}    search_for=***product_name***    replace_with=${product_name}
    seleniumlibrary.Wait Until Element Is Visible    ${locator}

Get product price
    [Arguments]    ${product_name}
    ${locator}    string.Replace string    string=${home_page.lbl_price_of_products}    search_for=***product_name***    replace_with=${product_name}
    seleniumlibrary.Wait Until Element Is Visible    ${locator}
    ${locator}    Set Variable    ${locator}
    ${price}    Get Text    ${locator}
    ${price}    Replace String    ${price}    $    ${EMPTY}
    RETURN    ${price}

Tap add product to cart by product name
    [Arguments]    ${product_name}
    ${locator}    string.Replace string    string=${home_page.btn_add_product}    search_for=***product_name***    replace_with=${product_name}
    seleniumlibrary.Click Element    ${locator}
    ${count_product}    builtin.Evaluate    ${count_products} + 1
    ${count_product}    builtin.Convert to string    ${count_product}
    builtin.Set suite variable    ${count_products}  ${count_product}

Tap close submenu
    seleniumlibrary.Click Element    ${home_locator.icn_close_sub_menu}

Tap menu icon
    seleniumlibrary.Click Element    ${home_locator.icn_menu}

Tap filter menu dropdown
    seleniumlibrary.Click Element    ${home_locator.ddl_filter_menu}

Tap cart icon
    seleniumlibrary.Click Element    ${home_locator.icn_cart}
