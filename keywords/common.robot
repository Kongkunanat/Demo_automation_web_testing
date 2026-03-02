*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open swag labs browser
    seleniumlibrary.Open Browser    ${url}      edge

Close all browser
    seleniumlibrary.Close All Browsers

Verify label header of top page is displayed by expected text
    [Arguments]    ${expected_text}
    seleniumlibrary.Wait Until Page Contains Element  ${common_locator.lbl_header}      ${GLOBAL_TIMOUT}
    ${actual_text}    seleniumlibrary.Get Text     ${common_locator.lbl_header}
    Should Be Equal As Strings     ${actual_text}     ${expected_text}

Confirm on dialog
    seleniumlibrary.Wait Until Element Is Visible      ${common_locator.button_ok}        ${GLOBAL_TIMOUT}
    seleniumlibrary.Click Element    ${common_locator.button_ok}   




