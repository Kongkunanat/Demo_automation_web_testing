*** Variables ***
#Icon for login or register
${home_locator.user_icon}        xpath=//ul[@role='menu']//span[@aria-label="user"]


#Input search bar
${home_locator.input_text}           xpath=//input[@placeholder='input search text']
${home_locator.element_search}        xpath=//span[@aria-label="search"]


#Add product into cart
${home_locator.select_product}            xpath=//div[@class="ant-col ant-col-md-8 ant-col-lg-6 ant-col-xl-4 ant-col-xxl-3 css-eq3tly"]


#button signup
${home_locator.button_signup}            xpath=//button[@class="css-eq3tly ant-btn ant-btn-default button-login"]
