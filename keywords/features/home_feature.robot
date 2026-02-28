*** Settings ***
Resource    ../import.robot

*** Keywords ***
Click For Sign up
    home_page.Click Icon User
    home_page.Click Button Sign Up

Select Product 
    [Arguments]    ${input_search}   
    home_page.Input Keyword For Search       ${input_search} 
    home_page.Click Search Button 
    home_page.Select Product 



