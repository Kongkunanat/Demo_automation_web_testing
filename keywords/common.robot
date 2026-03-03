*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open swag labs browser
    # seleniumlibrary.Open Browser    ${url}      edge
    ${service}=    Evaluate    selenium.webdriver.edge.service.Service("C:/WebDriver/msedgedriver.exe")    selenium.webdriver.edge.service
    ${options}=    Evaluate    selenium.webdriver.EdgeOptions()    selenium.webdriver
    Create Webdriver    Edge    service=${service}    options=${options}
    Go To    ${url}

Close all browser
    seleniumlibrary.Close All Browsers

Verify label header of top page is displayed by expected text
    [Arguments]    ${expected_text}
    seleniumlibrary.Wait Until Page Contains Element  ${common_locator.lbl_header}      ${GLOBAL_TIMOUT}
    ${actual_text}    seleniumlibrary.Get Text     ${common_locator.lbl_header}
    Should Be Equal As Strings     ${actual_text}     ${expected_text}

Scroll until element visible
    [Arguments]    ${locator}    ${max_scroll}=4
    FOR    ${index}    IN RANGE    ${max_scroll}
        ${found}=    Run Keyword And Return Status
        ...    seleniumlibrary.Wait Until Element Is Visible    ${locator}      ${GLOBAL_TIMOUT}
        IF    ${found}
            Exit For Loop
        END
        Execute Javascript    window.scrollBy(0, 200)
        Sleep    0.3s
    END
