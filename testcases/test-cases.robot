***Settings***
Resource    ../keywords/import.robot


Test Setup    Common.Open Doppio Browser
Test Teardown       Common.Close all browser



***Test Cases***
TC-001 Verify is order should be created 
    home_feature.Click For Sign up
    register_feature.Sign up    ${email_password.email_register}        ${email_password.password_register}        ${email_password.password_register}
    home_feature.Select Product       ${search_product.type}   
    product_detail_feature.Add To Cart
    delivery_info_feature.Input Fill Delivery info field   ${profile.name}   ${profile.surname}    ${profile.address}    ${profile.telephone} 
    payment_select_feature.Select Method For Payment
    payment_credit_feature.Input Credit And Card Info And Make Payment     ${credit_card.card_number}    ${credit_card.EXP}    ${credit_card.CVC}    ${credit_card.CardOwner} 
    home_page.Click Icon User
    account_page.Checked is order should be created









