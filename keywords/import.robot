*** Settings ***
Library     String
Library     SeleniumLibrary

Variables    ../resources/testdata/testdata.yaml
Variables    ../resources/setting/${env}/setting.yaml
Variables    ../resources/setting/configGlobal.yaml


Resource     ./common.robot
Resource     ./locators/common_locator.robot



Resource    ./pages/home_page.robot
Resource    ./locators/home_locator.robot




Resource    ./pages/product_detail_page.robot
Resource    ./locators/product_datail_locator.robot



Resource    ./pages/login_page.robot
Resource    ./locators/login_locator.robot




Resource    ./pages/delivery_info_page.robot
Resource    ./locators/delivery_info_locator.robot


Resource    ./pages/payment_select_page.robot
Resource    ./locators/payment_select_locator.robot


Resource    ./pages/payment_credit_page.robot
Resource    ./locators/payment_credit_locator.robot




Resource    ./pages/account_page.robot
Resource    ./locators/account_locator.robot




Resource    ./pages/register_page.robot
Resource    ./locators/register_locator.robot



Resource    ./features/home_feature.robot
Resource    ./features/register_feature.robot
Resource    ./features/login_feature.robot
Resource    ./features/payment_select_feature.robot
Resource    ./features/payment_credit_feature.robot
Resource    ./features/product_detail_feature.robot
Resource    ./features/delivery_info_feature.robot
