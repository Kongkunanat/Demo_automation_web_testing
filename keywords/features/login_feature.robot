*** Settings ***
Resource    ../import.robot


*** Keywords ***
Verify details of login page is displayed
    common.Verify label header of top page is displayed by expected text    expected_text=Swag Labs
    login_page.Verify input username text box is displayed
    login_page.Verify input password text box is displayed
    login_page.Verify login button is displayed

Input username and password then tap login button
    [Arguments]    ${username}   ${password}  
    login_page.Input username     txt_username=${username}
    login_page.Input password  txt_password=${password}
    login_page.Tap login button
