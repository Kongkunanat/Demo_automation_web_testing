*** Variables ***
${cart_details_locator.btn_continue_shopping}        xpath=//button[@id="continue-shopping"]
${cart_details_locator.btn_check_out}        xpath=//button[@id="checkout"]
${cart_details_locator.lbl_description}        xpath=//div[text()="${label_page}[lbl_description]"]
${cart_details_locator.lbl_quantity}        xpath=//div[text()="${label_page}[lbl_quantity]"]
${cart_details_locator.lbl_header}        xpath=//span[text()="${label_page}[lbl_cart]"]
${cart_details_locator.lbl_information_product}        xpath=//div[@class='cart_item'][.//div[@class='inventory_item_name' and text()='***name***'] and .//div[@class='cart_quantity' and text()='1']]//div[@class='inventory_item_price' and text()='***price***']
${cart_details_locator.btn_remove_product}        xpath=//div[@class='cart_item'][.//div[@class='inventory_item_name' and text()='***name***']]//button[text()='${label_page}[btn_remove]']
