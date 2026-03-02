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

Verify close submenu button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${home_locator.icn_close_sub_menu}    ${GLOBAL_TIMOUT}

Tap close submenu
    seleniumlibrary.Click Element    ${home_locator.icn_close_sub_menu}

Tap menu icon
    seleniumlibrary.Click Element    ${home_locator.icn_menu}

Verify all filter menu is displayed
    [Arguments]    ${filter_menu}
    FOR    ${item}    IN    @{filter_menu}
        ${locator}    string.Replace string    string=${home_locator.lbl_filter_menu_name}    search_for=***lbl_filter_menu_name***    replace_with=${item}
        seleniumlibrary.Wait Until Page Contains Element  ${locator}     ${GLOBAL_TIMOUT}
    END

Tap filter menu dropdown
    seleniumlibrary.Click Element    ${home_locator.ddl_filter_menu}

# Click Icon User
#     SeleniumLibrary.Wait Until Page Contains Element  ${home_locator.user_icon}      ${GLOBAL_TIMOUT}
#     SeleniumLibrary.Click Element    ${home_locator.user_icon} 

# Input Keyword For Search
#     [Arguments]    ${type_product}   
#     SeleniumLibrary.Wait Until Element Is Visible      ${home_locator.input_text}  ${GLOBAL_TIMOUT}
#     SeleniumLibrary.Input Text    ${home_locator.input_text}     ${type_product} 

# Click Search Button 
#     SeleniumLibrary.Wait Until Page Contains Element  ${home_locator.element_search}    ${GLOBAL_TIMOUT}
#     SeleniumLibrary.Click Element    ${home_locator.element_search}

# Select Product 
#     SeleniumLibrary.Wait Until Page Contains Element    ${home_locator.select_product}     ${GLOBAL_TIMOUT}
#     ${elements}=    Get Webelements    ${home_locator.select_product} 
#     ${first_element}=    Set Variable  ${elements}[0]
#     SeleniumLibrary.Click Element    ${first_element}

# Click Button Sign Up
#     SeleniumLibrary.Wait Until Element Is Enabled  ${home_locator.button_signup}    ${GLOBAL_TIMOUT}
#     SeleniumLibrary.Click Button     ${home_locator.button_signup}  
