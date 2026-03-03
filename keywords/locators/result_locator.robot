*** Variables ***
${result_locator.btn_cancel}        xpath=//button[text()="${result_page}[btn_cancel]"]
${result_locator.btn_finish}        xpath=//button[text()="${result_page}[btn_finish]"]
${result_locator.lbl_description}        xpath=//div[text()="${result_page}[lbl_description]"]
${result_locator.lbl_quantity}        xpath=//div[text()="${result_page}[lbl_quantity]"]
${result_locator.lbl_header}        xpath=//span[text()="${result_page}[lbl_header]"]
${result_locator.lbl_information_product}        xpath=//div[@class='cart_item' ][.//div[@class='inventory_item_name' and text()='***name***'] and .//div[@class='cart_quantity' and normalize-space()='1']]//div[@class='inventory_item_price' and text()='***price***']
${result_locator.lbl_shipping_info}        xpath=//div[text()='${result_page.lbl_shipping_info.lbl_header}']//following-sibling::div[text()='${result_page}[lbl_shipping_info][lbl_description]']
${result_locator.lbl_product_price}        xpath=//div[text()='${result_page.lbl_price.lbl_header}']//following-sibling::div[@class='summary_subtotal_label' and text()='${result_page.lbl_price.lbl_item_total}' and text()=***price***]
