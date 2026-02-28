*** Settings ***
Resource    ../import.robot


*** Keywords ***
Checked is order should be created 
    Wait Until Page Contains Element    ${account_locator.find_table}     ${GLOBAL_TIMOUT}

    
    




