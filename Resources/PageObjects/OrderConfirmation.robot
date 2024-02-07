*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${OrderConfirmationHeading} =    //span[@class='cart-header-title']
${OrderconfirmationMail} =    mar.ig10test@gmail.com
${OrderNumberText} =    Your order number is:
${PrintIcon} =    //span[@class='glyphicon glyphicon-print']
${OrderSummaryHeading} =    Order Summary
${PurchaserDetails} =    Purchaser
${InvoiceAddressSection} =    Invoice Address
${ShippingAddressSection} =    Shipping Address
${ShippingmethodSection} =    Shipping Method
${PaymentMethodSection} =    Payment Method
${OrderTypeSection} =    Order Type
${ShippingModeSection} =    Shipping Mode
${PrimaryPoSection} =    Primary PO
${InsuranceSection} =    Insurance Type
${OrderSummary_Subtotal} =    Subtotal
${OrderSummary_Shipping} =    Shipping
${OrderSummary_tax} =    Tax
${OrderSummary_OrderTotal} =    Order Total
${MyAccountSection} =    Account
${OrderConfirmationMyAccountLink} =    //a[normalize-space()='My Account']
${ContinueShoppingLink} =    //a[normalize-space()='Continue Shopping']
${ItemDescriptionColumn} =    Item Description
${QtyColumn} =    Qty.
${PriceColumn} =    Price
${TotalColumn} =    Total
${OrderConfirmationLogo} =  //img[@title='Kion Logo']
*** Keywords ***
Verify All Orderconfirmation page contents
    page should contain element    ${OrderConfirmationHeading}
    page should contain    ${OrderconfirmationMail}
    page should contain    ${OrderNumberText}
    page should contain    ${PurchaserDetails}
    page should contain    ${InvoiceAddressSection}
    page should contain    ${ShippingAddressSection}
    page should contain    ${ShippingmethodSection}
    page should contain    ${PaymentMethodSection}
    page should contain    ${OrderTypeSection}
    page should contain    ${ShippingModeSection}
    page should contain    ${PrimaryPoSection}
    page should contain    ${InsuranceSection}
    page should contain element    ${PrintIcon}
    page should contain    ${OrderSummaryHeading}
    page should contain    ${OrderSummary_Subtotal}
    page should contain    ${OrderSummary_Shipping}
    page should contain    ${OrderSummary_tax}\
    page should contain    ${OrderSummary_OrderTotal}
    page should contain    ${MyAccountSection}
    page should contain element    ${OrderConfirmationMyAccountLink}
    page should contain element    ${ContinueShoppingLink}
    page should contain    ${ItemDescriptionColumn}
    page should contain    ${QtyColumn}
    page should contain    ${PriceColumn}
    page should contain    ${TotalColumn}
    Click Element    ${OrderConfirmationLogo}
