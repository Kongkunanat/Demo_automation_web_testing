*** Settings ***
Resource    ../import.robot

*** Keywords ***
Verify details of information page is displayed
    information_page.Verify continue button is displayed
    information_page.Verify cancel button is displayed
    information_page.Verify title header is displayed
    information_page.Verify input first name text box is displayed
    information_page.Verify input last name text box is displayed
    information_page.Verify input zip code text box is displayed

Input username and password then tap continue button
    [Arguments]    ${username}   ${password}    ${zip_code}
    information_page.Input first name     txt_username=${username}
    information_page.Input last name  txt_last_name=${password}
    information_page.Input zip code     txt_zip_code=${zip_code}
    information_page.Tap continue button
