*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${MyAccountLink} =    //i[@class='icon-users']
${MyAccount_Overview_PageHeading} =    Welcome back!
${SavedUnplaced_Order_Link} =    //a[normalize-space()='Saved Unplaced Orders']
${SavedUnplaced_Order_PageHeading} =    Saved Unplaced Orders
${Pending_Purchases_Link} =    //a[@title='Pending Purchases']
${Pending_Purchases_PageHeading} =    Pending Purchases
${Rejected_Purchases_Link} =    //a[@href='https://tst.lindelink.com/rejected-purchases']
${Rejected_Purchases_PageHeading} =    Rejected Purchases
${OrderTemplates_Link} =    //a[normalize-space()='Order Templates']
${OrderTemplates_PageHeading} =    Order Templates
${Subscription_Link} =    //a[normalize-space()='Subscriptions']
${Subscription_PageHeading} =    Subscriptions
${OrderNoHeader} =  //th[@class='highlighted']
${PlacedOrders_Link} =    //a[@title='Placed Orders']
${PlacedOrders_PageHeading} =    Service Parts (Placed Order Search Results)
${BackOrders_Link} =    //a[@title='BackOrders']
${BackOrders_PageHeading} =    Back Order Report
${TruckSales_Link} =    //a[@title='Returns'][normalize-space()='Truck Sales']
${TruckSales_PageHeading} =    Truck Sales
${Returns_Link} =    //a[@title='Returns'][normalize-space()='Returns']
${Returns_PageHeading} =    Returns
${ProductSupport_Link} =    //p[normalize-space()='Product Support']
${Warranty_Link} =    //a[@title='Warranty Management']
${Warranty_PageHeading} =    Warranty Management
${TruckInstallation_Link} =    //a[@title='Truck Installations']
${TruckInstallation_PageHeading} =    Truck Installations
${TruckSearch_Link} =    //a[@data-testing-id='link-trucksearch-templates']
${TruckSearch_PageHeading} =    Truck Search
${MyProfile_Link} =    //p[normalize-space()='My Profile']
${ProfileSetting_Link} =    //a[normalize-space()='Profile Settings']
${ProfileSetting_PageHeading} =  Profile Settings
${MyApprovals_Link} =    //p[normalize-space()='My Approvals']
${PurchasetoApprove_Link} =    //a[@title='Purchases to Approve']
${PurchasetoApprove_PageHeading} =    Purchases to Approve
${App_Rejected_Purchases} =    //a[@href='https://tst.lindelink.com/rejected-purchase-approvals']
${App_Rejected_Purchases_PageHeading} =    Rejected Purchases
${App_Approved_Purchases} =    //a[@title='Approved Purchases']
${App_Approved_Purchases_PageHeading} =    Approved Purchases
${Notification_Link} =    //p[normalize-space()='Notifications']
${BackInStock_Link} =    //a[@title='Back In Stock']
${BackInStock_PageHeading} =    Product Notifications
${BackOrderID} =    //tbody/tr[1]/td[5]/a[1]
${BackOrdersDetails_Heading} =    Service Parts (Placed Order Summary)
${Changein_Price_Link} =    //a[@title='Changes in Price']
${Changein_Price_PageHeading} =    Product Notifications
${MyOrganaization_Link} =    //p[normalize-space()='My Organization']
${Addresses_Link} =    //a[normalize-space()='Addresses']
${Addresses_PageHeading} =    Addresses
${Payment_Link} =    //a[normalize-space()='Payment']
${Payment_PageHeading} =    Saved Payment Information
${Users_Link} =    //a[normalize-space()='Users']
${Users_PageHeading} =    Users
${OrderDetails_Link} =    //tbody[@id='OfflineOrderResutlsBody']//tr[1]//td[2]
${OrderDetails_Heading} =    Service Parts (Placed Order Summary)

#Truck Transfer
${MA-TruckTransferLink} =  //a[@data-testing-id='link-trucksearch-templates'][normalize-space()='Truck Transfer']
${MA_TruckTransferPageHeading} =  Truck Search
*** Keywords ***
go to My Account Overview
    click element    ${MyAccountLink}
    page should contain    ${MyAccount_Overview_PageHeading}
    Sleep    1s
go to saved Unplaced Order page
    click element    ${SavedUnplaced_Order_Link}
    page should contain    ${SavedUnplaced_Order_PageHeading}
    Sleep    1s
go to pending purchases page
    click element    ${Pending_Purchases_Link}
    page should contain    ${Pending_Purchases_PageHeading}
    Sleep    1s
go to rejected purchases page
    click element    ${Rejected_Purchases_Link}
    page should contain    ${Rejected_Purchases_PageHeading}
    Sleep    2s
go to Order templates page
    click element    ${OrderTemplates_Link}
    page should contain    ${OrderTemplates_PageHeading}}
    Sleep    2s
go to subscription page
    click element    ${Subscription_Link}
    page should contain    ${Subscription_PageHeading}
    Sleep    2s
go to placed order page
    click element    ${PlacedOrders_Link}
    page should contain    ${PlacedOrders_PageHeading}
    Sleep    2s
go to order details page
    click element    ${OrderDetails_Link}
    page should contain    ${OrderDetails_Heading}
    Sleep    2s

go to back orders page
    click element    ${BackOrders_Link}
    page should contain    ${BackOrders_PageHeading}
    Sleep    2s
go to back orders details
    click element    ${BackOrderID}
    page should contain    ${BackOrdersDetails_Heading}
    Sleep    2s
go to truck sales page
    click element    ${TruckSales_Link}
    page should contain    ${TruckSales_PageHeading}
    Sleep    2s
go to returns page
    click element    ${Returns_Link}
    page should contain    ${Returns_PageHeading}
    Sleep    2s
Expand Product support section
     Wait Until Element Is Visible    ${ProductSupport_Link}
    click element    ${ProductSupport_Link}
    Sleep    1s
go to warranty page
    click element    ${Warranty_Link}
    page should contain    ${Warranty_PageHeading}
    Sleep    2s
go to truck installation page
    click element    ${TruckInstallation_Link}
    page should contain    ${TruckInstallation_PageHeading}
    Sleep    2s
go to truck search page
    click element    ${TruckSearch_Link}
    page should contain    ${TruckSearch_PageHeading}
    Sleep    2s
Expand Approval section
    click element    ${MyApprovals_Link}
    Wait Until Element Is Visible    ${PurchasetoApprove_Link}
go to purchase to Approve page
    click element    ${PurchasetoApprove_Link}
    page should contain    ${PurchasetoApprove_PageHeading}
    Sleep    2s
go to Approval Approved purchases page
    click element    ${App_Approved_Purchases}
    page should contain    ${App_Approved_Purchases_PageHeading}
    Sleep    2s
go to Approval Rejected purchases page
    click element    ${App_Rejected_Purchases}
    page should contain    ${App_Rejected_Purchases_PageHeading}
    Sleep    2s
Expand the Notification section
    click element    ${Notification_Link}
    Sleep    2s
go to backIn Stock notification page
    click element    ${BackInStock_Link}
    page should contain    ${BackInStock_PageHeading}
    Sleep    2s
go to Chages in price notification page
    click element    ${Changein_Price_Link}
    page should contain    ${Changein_Price_PageHeading}
    Sleep    2s
Expand the My profile section
    click element    ${MyProfile_Link}
    Sleep    1s
go to profile setting page
    click element    ${ProfileSetting_Link}
    page should contain    ${ProfileSetting_PageHeading}
    Sleep    2s
Expand My Organization section
    click element    ${MyOrganaization_Link}

go to Addresses page
    click element    ${Addresses_Link}
    page should contain    ${Addresses_PageHeading}
    Sleep    2s
go to Payment page
    click element    ${Payment_Link}
    page should contain    ${Payment_PageHeading}
    Sleep    2s

go to Users page
    click element    ${Users_Link}
    page should contain    ${Users_PageHeading}
    Sleep    2s

go to truck transfer page
    Click Element    ${MA-TruckTransferLink}
    Page Should Contain    ${MA_TruckTransferPageHeading}
    Sleep    2s