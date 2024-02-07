*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Po-field} =    //input[@name='PrimaryPO']
${Po_Number} =    Test_123
${TermsAndConditions} =    terms-conditions-agree
${PlaceOrderNow_Button} =    //button[@id='submit-order']
${CheckOut_Heading} =    Checkout
${StockOrderLimit_Message} =    The order total should be $ 500 or above for stock order type
${HomeLogo} =  //img[@title='Kion Logo']
*** Keywords ***
Stock Order placing with less than minimum limit
    input text    ${Po-field}    ${Po_Number}
    click element   ${TermsAndConditions}
    click element    ${PlaceOrderNow_Button}


Verify the Stock order limit message
    page should contain    ${StockOrderLimit_Message}
    page should contain    ${CheckOut_Heading}
    Click Element    ${HomeLogo}