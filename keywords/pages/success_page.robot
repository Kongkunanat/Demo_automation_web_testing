*** Settings ***
Resource    ../import.robot


*** Keywords ***
Verify back home button is displayed
    seleniumlibrary.Wait Until Element Is Visible    ${success_locator.btn_back_home}    ${GLOBAL_TIMOUT}

Verify title header is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${success_locator.lbl_header}      ${GLOBAL_TIMOUT}

Verify description of success is displayed
    seleniumlibrary.Wait Until Element Is Visible  ${success_locator.lbl_description}      ${GLOBAL_TIMOUT}

Tap back home button
    seleniumlibrary.Click Element    ${success_locator.btn_back_home}
