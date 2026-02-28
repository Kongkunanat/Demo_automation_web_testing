*** Variables ***

#Cart icon
${delivery_locator.Icon_cart}        xpath=//span[@aria-label="shopping-cart"]

#wait for detail  load
${delivery_locator.load_data}        xpath=//div[@class="product-detail"] 

#Input  fill
${delivery_locator.name}        xpath=//input[@id="form_item_name"]
${delivery_locator.surname}        xpath=//input[@id="form_item_surName"]
${delivery_locator.address}        xpath=//input[@id="form_item_address"]
${delivery_locator.phone}        xpath=//input[@id="form_item_phone"]
 
#button pay
${delivery_locator.pay_button}       xpath=//button[@type="button"]//span[text()='PAY']



