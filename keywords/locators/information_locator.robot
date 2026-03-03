*** Variables ***
${information_locator.btn_continue}        xpath=//input[@id="continue"]
${information_locator.btn_cancel}        xpath=//button[@id="cancel"]
${information_locator.lbl_header}        xpath=//span[text()="${detail_page}[lbl_header]"]
${information_locator.txt_first_name}      xpath=//input[@id="first-name" and  @placeholder="${detail_page}[lbl_first_name]"]
${information_locator.txt_last_name}      xpath=//input[@id="last-name" and  @placeholder="${detail_page}[lbl_last_name]"]
${information_locator.txt_zip_code}      xpath=//input[@id="postal-code" and  @placeholder="${detail_page}[lbl_zip_code]"]
