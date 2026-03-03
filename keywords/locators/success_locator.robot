*** Variables ***
${success_locator.btn_back_home}        xpath=//button[text()="${success_page}[btn_back_home]"]
${success_locator.lbl_header}        xpath=//span[text()="${success_page}[lbl_header]"]
${success_locator.lbl_description}        xpath=//h2[@class="complete-header" and text()="${success_page.lbl_information.lbl_header}"]//following-sibling::div[text()="${success_page.lbl_information.lbl_description}"]