*** Settings ***
Resource    ../import.robot


*** Keywords ***
Click Icon User
    SeleniumLibrary.Wait Until Page Contains Element  ${home_locator.user_icon}      ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${home_locator.user_icon} 



Input Keyword For Search
    [Arguments]    ${type_product}   
    SeleniumLibrary.Wait Until Element Is Visible      ${home_locator.input_text}  ${GLOBAL_TIMOUT}
    SeleniumLibrary.Input Text    ${home_locator.input_text}     ${type_product} 


Click Search Button 
    SeleniumLibrary.Wait Until Page Contains Element  ${home_locator.element_search}    ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${home_locator.element_search}



Select Product 
    SeleniumLibrary.Wait Until Page Contains Element    ${home_locator.select_product}     ${GLOBAL_TIMOUT}
    ${elements}=    Get Webelements    ${home_locator.select_product} 
    ${first_element}=    Set Variable  ${elements}[0]
    SeleniumLibrary.Click Element    ${first_element}



Click Button Sign Up
    SeleniumLibrary.Wait Until Element Is Enabled  ${home_locator.button_signup}    ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Button     ${home_locator.button_signup}  





