*** Settings ***
Library    String
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections

Variables    ../resources/helper_key/home_page.yaml
Variables    ../resources/helper_key/cart_details_page.yaml
Variables    ../resources/helper_key/information_page.yaml
Variables    ../resources/testdata/testdata.yaml
Variables    ../resources/setting/${env}/setting.yaml
Variables    ../resources/setting/configGlobal.yaml


Resource     ./common.robot
Resource     ./locators/common_locator.robot



Resource    ./pages/home_page.robot
Resource    ./locators/home_locator.robot


Resource    ./pages/login_page.robot
Resource    ./locators/login_locator.robot


Resource    ./pages/information_page.robot
Resource    ./locators/information_locator.robot


Resource    ./pages/cart_details_page.robot
Resource    ./locators/cart_details_locator.robot

Resource    ./features/home_feature.robot
Resource    ./features/login_feature.robot
Resource    ./features/information_feature.robot
Resource    ./features/cart_details_feature.robot
