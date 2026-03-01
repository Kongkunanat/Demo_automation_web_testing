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
    seleniumlibrary.Wait Until Page Contains Element  ${common_locator.lbl_header}      ${GLOBAL_TIMOUT}
    ${actual_text}    seleniumlibrary.Get Text     ${common_locator.lbl_header}
    Should Be Equal As Strings     ${actual_text}     ${expected_text}

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
