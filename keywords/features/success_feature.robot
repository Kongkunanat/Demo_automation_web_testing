*** Settings ***
Resource    ../import.robot

*** Keywords ***
Verify details of success page is displayed then tap back to home button
    success_page.Verify title header is displayed
    success_page.Verify description of success is displayed
    success_page.Verify back home button is displayed
    success_page.Tap back home button