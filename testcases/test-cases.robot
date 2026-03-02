***Settings***
Resource    ../keywords/import.robot

Test Setup    common.Open swag labs browser
Test Teardown       common.Close all browser


***Test Cases***
TC-001 Verify user can buy product successfully
    #Pre-condition
    builtin.Set suite variable    ${count_products}  0
    ${cart_products}    Create List
    builtin.Set suite variable    ${cart_products}
    login_feature.Verify deatails of login page is displayed
    login_feature.Input username and password then tap login button    username=${account.username}   password=${account.password}   
    home_feature.Verify deatails of home page is displayed
    home_page.Tap menu icon
    home_page.Verify close submenu button is displayed
    home_page.Verify all submenu of menu is displayed   list_sub_menu=${sub_menu}
    home_page.Tap close submenu
    home_page.Tap filter menu dropdown
    home_page.Verify all filter menu is displayed   filter_menu=${filter_menu}
    home_page.Verify all product is displayed   products=${products}
    home_page.Verify footer of home page is displayed
    #
    home_feature.Add product to cart by product name     product_name=${products[0]}
    home_feature.Add product to cart by product name     product_name=${products[1]}
    #
    home_page.Tap cart icon
    cart_details_feature.Verify details of cart details page is displayed then tap checkout button    cart_products=${cart_products}
    #
    information_feature.Verify details of information page is displayed
    information_feature.Input username and password then tap continue button    username=${account.first_name}   password=${account.last_name}    zip_code=${account.zip_code}
