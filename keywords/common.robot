*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open Doppio Browser
    SeleniumLibrary.Open Browser    ${url}      gc


Close all browser
    SeleniumLibrary.Close All Browsers


Confirm On Dialog
    SeleniumLibrary.Wait Until Element Is Visible      ${common_locator.button_ok}        ${GLOBAL_TIMOUT}
    SeleniumLibrary.Click Element    ${common_locator.button_ok}   




