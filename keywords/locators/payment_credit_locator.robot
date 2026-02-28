*** Variables ***

#input text
${payment_credit_locator.input_number}        xpath=//input[@id='basic_bin'] 
${payment_credit_locator.input_exp}           xpath=//input[@id="basic_exp"] 
${payment_credit_locator.input_cvc}           xpath=//input[@id="basic_cvc"] 
${payment_credit_locator.input_basic_owner}        xpath=//input[@id="basic_owner"] 


#button confirm
${payment_credit_locator.confirm_button}        xpath=//button[@type='submit']//span[text()='Confirm Payment']













