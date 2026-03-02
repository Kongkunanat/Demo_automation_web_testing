*** Settings ***
Resource    ../import.robot

*** Keywords ***
Verify deatails of home page is displayed
    common.Verify label header of top page is displayed by expected text    expected_text=Swag Labs
    home_page.Verify cart icon is displayed
    home_page.Verify menu icon is displayed
    home_page.Verify filter dropdown is displayed
    home_page.Verify title of home page is displayed correctly    expected_text=Products
    home_page.Verify not empty list of product is displayed
