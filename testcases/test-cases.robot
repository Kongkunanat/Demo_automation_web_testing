***Settings***
Resource    ../keywords/import.robot

Test Setup    common.Open swag labs browser
Test Teardown       common.Close all browser


***Test Cases***
TC-001 Verify user can buy product successfully
    # Pre-condition
    builtin.Set suite variable    ${count_products}  0
    ${cart_products}    Create List
    builtin.Set suite variable    ${cart_products}
    # Verify login page is displayed then input username and password then tap login button
    login_feature.Verify details of login page is displayed
    login_feature.Input username and password then tap login button    username=${account.username}   password=${account.password}   
    home_feature.Verify details of home page is displayed
    # Add product to cart by product name
    home_feature.Add product to cart by product name     product_name=${products[0]}
    home_feature.Add product to cart by product name     product_name=${products[1]}
    # Tap cart icon then verify details of cart details page is displayed then tap checkout button
    home_page.Tap cart icon
    cart_details_feature.Verify details of cart details page is displayed then tap checkout button    cart_products=${cart_products}
    # Verify information page is displayed then input information of user then tap continue button
    information_feature.Verify details of information page is displayed
    information_feature.Input username and password then tap continue button    username=${account.first_name}   password=${account.last_name}    zip_code=${account.zip_code}
    # Verify result page is displayed then tap finish button
    result_feature.Verify details of result page is displayed then tap finish button  cart_products=${cart_products}
    # Verify success page is displayed then tap back to home button
    success_feature.Verify details of success page is displayed then tap back to home button