*** Settings ***
Resource    ./PageObjects/AnnualReturns.robot
Resource    ./PageObjects/ComparePage.robot
Resource    ./PageObjects/Current_WorkSheet.robot
Resource    ./PageObjects/HomePage.robot
Resource    ./PageObjects/MyAccount.robot
Resource    ./PageObjects/OrderTemplate.robot
Resource    ./PageObjects/PDP_Page.robot
Resource    ./PageObjects/PlacedOrder.robot
Resource    ./PageObjects/PLP_Page.robot
Resource    ./PageObjects/Returns.robot
Resource    ./PageObjects/SavedUnplaced_Order.robot
Resource    ./PageObjects/Search.robot
Resource    ./PageObjects/TruckInstallation.robot
Resource    ./PageObjects/TruckSales.robot
Resource    ./PageObjects/TruckSearch.robot
Resource    ./PageObjects/TruckTransfer.robot
Resource    ./PageObjects/WarrantyManagement.robot
Resource    ./PageObjects/LoginPage.robot
Resource    ./PageObjects/CLP_Page.robot
Resource    ./PageObjects/GuestUserPages.robot
Resource    ./PageObjects/Checkout.robot
Resource    ./PageObjects/UsersPage.robot
Resource    ./PageObjects/OrderConfirmation.robot
Resource    ./PageObjects/BackOrders.robot
Resource    ./PageObjects/AdminLogin.robot
Resource    ./PageObjects/BackOfficeTruckSearch.robot
Resource    ./PageObjects/BackOfficeInstallationReport.robot
Resource    ./PageObjects/BoWarranty.robot
*** Variables ***

*** Keywords ***
Go to login page
    Sleep    1s
    LoginPage.go to login

Login to the kion site
    LoginPage.login with valid credentials

Select customer from cutomer selector
    LoginPage.Select customer

Select Sunbelt customer in the selector
    LoginPage.select different sunbelt from dealer dropdown

Verify the home page banner
    HomePage.Verify the banner image

Verify the home page middle contents
    HomePage.Verify the middle contents

Verify the home page featured products section
    HomePage.Verify the featured product section

Verify the home page footer section
    HomePage.Verify the footer section

Click the add to worksheet link in the home page feautured products section
    HomePage.Hover over the product and click add to worksheet

Click linde link in the header
    CLP_Page.Click Linde in Header

Navigate to Home Page
    HomePage.Go Home
    Sleep    2s
Verify the refinement section
    CLP_Page.Verify the now shopping by heading
    CLP_Page.Verify the category refinement section
    CLP_Page.Veify the refinement section
    CLP_Page.Verify the Order template section
    CLP_Page.Verify the compare products section in refinement

Click maintanence category in CLP
    CLP_Page.Click maintanence category

Navigate to PLP
    PLP_Page.Click Kits link

Add a product from PLP
    PLP_Page.Add a product to worksheet

Select ascending order in sort by in PLP
    PLP_Page.Select ascending order in sort by

Click addtoworksheet Button in Quick view
    PLP_Page.Click the quick view button
    PLP_Page.click the Quick view add to worksheet button
Verfiy the refinement section is displaying or not
    PLP_Page.Verify the refinement section

Swith PLP grid view to list view
    PLP_Page.click list view icon

Swith PLP list view to grid view
    PLP_Page.click gridview icon

Click PLP list view add to worksheet Button
    PLP_Page.click add worksheet button in list view

Search the valid product
    Search.Search the product

Navigate to the search result page
    Search.Search with valid search term

Navigate to the PDP page
    PDP_Page.Go to PDP

Click add to worksheet button from the PDP page
    PDP_Page.Click add to worksheet button

Verify the added product in worksheet
    PDP_Page.Go to current worksheet and verify the product

Add a Alternative products to the worksheet
    PDP_Page.Go Alternative product PDP

Add a Breakdown products to the worksheet
    PDP_Page.Go Breakdown product PDP

Add replacement product to the worksheet
    PDP_Page.Go replacement product PDP

Verify the all type of product are added in the worksheet
    PDP_Page.Go to current worksheet and verify the all type of product

Verify the guest user header
    GuestUserPages.Verify the Guest_home Page header

Click order template icon in header
    GuestUserPages.click guest_header order template icon

Verify the page is navigated to the Login page
    GuestUserPages.Verify the Login page is navigated

Navigate to the home page
    GuestUserPages.go to home page

Navigate to guest_CLP
    GuestUserPages.click header_linde link

Navigate to guest_PLP
    GuestuserPages.go to guest PLP

Navigate to guest_PDP and verfy the details
    GuestUserPages.go to guest PDP
    Guestuserpages.verify the guest_pdp contents

Navigate to the Guest SRP and verify the page
    GuestUserPages.go to SRP page

Switch the sunbelt dealer
    LoginPage.click dealer dropdown
    LoginPage.Select different dealer from popup

Switch the Elevex dealer
    LoginPage.click dealer dropdown
    LoginPage.select Elevex dealer from dealer dropdown
Navigate to the MyAccount and verify the Switched customer
    LoginPage.Go to My Account
    Wait Until Page Contains    Welcome back!
    LoginPage.Verify the Loggedin customer

Add a compare page to worksheet
    ComparePage.click compare icon from PDP page
    ComparePage.Click add to worksheet button in compare page

Verify the compare page product in current worksheet
    ComparePage.verify the compare page product in current worksheet

Upload the xls file in the current worksheet
    Current_WorkSheet.Go to currentworksheet
    sleep    3s
    Current_WorkSheet.Upload a xls file

Clear the worksheet products
    current_worksheet.clear products

Upload the CSV file in the current worksheet
    current_worksheet.upload the csv file in the current worksheet

Upload the CSV file for Stock type order in the current worksheet
    Current_WorkSheet.Clear products
    Current_WorkSheet.CSV file for Stock type order in the current worksheet

Upload the XLSX file in the current worksheet
    current_worksheet.upload the xlsx file in the current worksheet

Upload a MathPublisID file in the current worksheet
    Current_WorkSheet.Go to currentworksheet
    Sleep    5s
    current_worksheet.upload a mathpublish id

Export the current worksheet details
    Current_WorkSheet.Go to currentworksheet
    Current_WorkSheet.Export the current worksheet

Navigate to the currentwork sheet
    Current_WorkSheet.Go to currentworksheet

Select Emergency order type in the current worksheet
    Current_WorkSheet.Select the Emergency Order

Select Stock order type in the current worksheet
    Current_WorkSheet.Select the Stock Order

Add products to the shopping cart
    Current_Worksheet.go to shoppingcart

Place the order with all current worksheet products
    Current_WorkSheet.go to checkout
    Current_WorkSheet.Place the Order

Add a <500 product to worksheet
    Current_WorkSheet.Clear products
    current_worksheet.Add a <500 product

Try to place the stock order
    Current_WorkSheet.go to checkout
    Checkout.Stock Order placing with less than minimum limit

Verify the stock order message in the checkout page
    Checkout.Verify the Stock order limit message

Verify the My Account Over view page
    MyAccount.go to My Account Overview

Verify the Saved unplaced order page
    MyAccount.go to saved Unplaced Order page

Verify the pending purchases page
    MyAccount.go to pending purchases page

Verify the Rejected purchases page
    MyAccount.go to rejected purchases page

Verify the Subscriptions page
    MyAccount.go to subscription page

Verify the Placed order page
    MyAccount.go to placed order page

Verify the placed order details page
    MyAccount.go to order details page

Verify the Order details page contents
    MyAccount.go to My Account Overview
    MyAccount.go to placed order page
    PlacedOrder.Order no for verify the details
    PlacedOrder.Verify the Order details page contents

Verify the Trackit link for completed orders in invoice sumary page
    MyAccount.go to My Account Overview
    MyAccount.go to placed order page
    PlacedOrder.Search the completed orders
    PlacedOrder.TrackIt Link verfication

Verify the BackOrders Page
    MyAccount.go to back orders page

Verify the Back Orders page lazyload
    MyAccount.go to My Account Overview
    MyAccount.go to back orders page
    BackOrders.Verify the back orders list page Lazy load

Verify the Back Order list sorting option
    MyAccount.go to My Account Overview
    MyAccount.go to back orders page
    BackOrders.BackOrders Sorting

Verify the Back Orders list page details
    MyAccount.go to My Account Overview
    MyAccount.go to back orders page
    BackOrders.Verify the backorder list page

Verify the Backorders details page
    MyAccount.go to back orders details

Verify the Back Orders Details page contents
    MyAccount.go to My Account Overview
    MyAccount.go to back orders page
    BackOrders.Go to back orders details page and verify the backorder details pagecontents

Verify the Truck sales page
    MyAccount.go to truck sales page

Verify the returns page
    MyAccount.go to returns page

Verify the warranty page
    MyAccount.Expand Product support section
    MyAccount.go to warranty page

Verify the truck Installations page
    MyAccount.go to truck installation page

Verify the truck search page
    MyAccount.go to truck search page

Verify the purchase to Approve page
    MyAccount.Expand Approval section
    MyAccount.go to purchase to Approve page

Verify the Approval rejected purchases
    MyAccount.go to Approval Rejected purchases page

Verify the Approval Approved purchases
    MyAccount.go to Approval Approved purchases page

Verify the BackInStock Notification
    MyAccount.Expand the Notification section
    MyAccount.go to backIn Stock notification page

Verify the changes in price Notification
    MyAccount.go to Chages in price notification page

Verify the profile setting page
    MyAccount.Expand the My profile section
    MyAccount.go to profile setting page

Verify the Addressed page
    MyAccount.Expand My Organization section
    MyAccount.go to Addresses page

Verify the My Account payments page
    MyAccount.go to Payment page

Verify the Users Page
    MyAccount.go to Users page

Verify the all contents in users page
    MyAccount.go to My Account Overview
    Sleep    3s
    #MyAccount.Expand My Organization section
    #Sleep    3s
    UsersPage.Verify the user page contents

Verify all page contents in the user details page
    MyAccount.go to My Account Overview
    #Sleep    2s
    #MyAccount.Expand My Organization section
    Sleep    1s
    UsersPage.Verify userdetails page details

Verify the assign userbutton in user list page
    MyAccount.go to My Account Overview
    Sleep    2s
   # MyAccount.Expand My Organization section
   # Sleep    1s
    UsersPage.Verify the assign User button

Verify the add user button in the user list page
    UsersPage.Verify the add user button

Navigate to the SavedUnplacedOrders_Emergency details page and place the order
    MyAccount.go to My Account Overview
    MyAccount.go to saved Unplaced Order page
    sleep    5s
    SavedUnplaced_Order.go to emergency saved worksheet
    SavedUnplaced_Order.go to shoppingcart
    SavedUnplaced_Order.go to checkout
    SavedUnplaced_Order.Place the Order

Navigate to the SavedUnplacedOrders_Stock details page and place the order
    Current_WorkSheet.Go to currentworksheet
    Current_WorkSheet.Save a Stock worksheet
    Sleep    8s
    MyAccount.go to My Account Overview
    MyAccount.go to saved Unplaced Order page
    sleep    3s
    SavedUnplaced_Order.go to Stock saved workseet
    SavedUnplaced_Order.go to shoppingcart
    SavedUnplaced_Order.go to checkout
    SavedUnplaced_Order.Place the Order

Verify the all components are displayed in the Order confirmation page
    Current_WorkSheet.Go to currentworksheet
    Current_WorkSheet.Clear products
    Current_WorkSheet.Select the Emergency Order
    Current_WorkSheet.Add product to worksheet
    Current_WorkSheet.go to shoppingcart
    Current_WorkSheet.go to checkout
    Current_WorkSheet.Place the Order and verify all commponents in orderconfirmation page
    OrderConfirmation.Verify All Orderconfirmation page contents

Verify the all elements in the placed orders list page
    MyAccount.go to My Account Overview
    MyAccount.go to placed order page
    PlacedOrder.Verify the page elements

Verify the all search criterias in placed orders page
    MyAccount.go to My Account Overview
    MyAccount.go to placed order page
    PlacedOrder.Order No search
    Sleep    2s
    PlacedOrder.Purchase Order number search
    Sleep    2s
    PlacedOrder.Purchase Order date range
    Sleep    4s
    PlacedOrder.OrderType Search
    Sleep    2s
    PlacedOrder.Order status search
    Sleep    2s
    PlacedOrder.Part number search
    Sleep    2s
    PlacedOrder.Ascending search

Verify the placed orders page sorting options
    MyAccount.go to My Account Overview
    MyAccount.go to placed order page
    PlacedOrder.Header sorting options

Verify the returns page search criteria
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Returns Default search
    Returns.Part return search
    Returns.Return your reference search
    Returns.Return Request date range
    Returns.Return Request Type Search
    Returns.Return status search
    Returns.Return Part number search

Verify the returns page Sorting and LazyLoad
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Verify returns sorting
    Returns.Verify returns LazyLoad

Verify the new return form page information
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify the new return form information

Verify the new return form information for price billing Error Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify pricebilling error reason information

Verify the new return form information for Dealer Order in Error Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Dealer Order in error reason information

Verify the new return form information for Incorrectly Specified Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Incorrectly Specified reason information

Kion_App.Verify the new return form information for Documentation/Manual Incorrect Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Documentation/Manual Incorrect reason information

Verify the new return form information for Short Shipped Incorrect Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Short Shipped Incorrect reason information

Verify the new return form information for Duplicate Shipment Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Duplicate Shipment reason information

Verify the new return form information for Mismarked Inventory Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Mismarked Inventory reason information

Verify the new return form information for Damaged in Transit by Carrier Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Damaged in Transit by Carrier reason information

Verify the new return form information for Damaged in Transit b/o Packaging Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Damaged in Transit b/o Packaging reason information

Verify the new return form information for Damaged in Lost in Transit Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Damaged in Lost in Transit reason information

Verify the new return form information for Freight Overcharge Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Damaged in Freight Overcharge reason information

Verify the new return form information for Freight for Re-order Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify Damaged in Freight for Re-order reason information

Verify the new return form information for Freight for Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify in Freight for Return reason information

Verify the new return form information for Core Exchange Return Reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Verify in Core Exchange Return reason information

Submit new return
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Submit new Test return

Submit the New return using price billing error return reason
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    Returns.Go to new returns
    Returns.Submit new price billing error return

Click the annual returns link in the returns page
    MyAccount.go to My Account Overview
    MyAccount.go to returns page
    AnnualReturns.Navigating to the Annual Returns Page

Verify the truck sales list page search criteria
    MyAccount.go to My Account Overview
    MyAccount.go to truck sales page
    TruckSales.Verify the truck sales search page contents
    Sleep    2s
    TruckSales.Order number search
    Sleep    2s
    TruckSales.Purchase OrderNumber search
    Sleep    2s
    TruckSales.Purchase Order date range search
    Sleep    2s
    TruckSales.Truck Model search
    Sleep    2s
    TruckSales.Order status search

Verify the truck sales search with more than one search criteria
    MyAccount.go to My Account Overview
    MyAccount.go to truck sales page
    TruckSales.Search Sale report with more search criteria

Verify the truck sales search result lazy load
   MyAccount.go to My Account Overview
   MyAccount.go to truck sales page
   TruckSales.Verify the lazy load in the truck sales search result

Verify the sorting options in trucksales search results
   MyAccount.go to My Account Overview
   MyAccount.go to truck sales page
   TruckSales.Verify the trucksales search result sorting option

Verify the truck details page contents
   MyAccount.go to My Account Overview
   MyAccount.go to truck sales page
   TruckSales.Verify the trucksales details page contents

Verify the truck Search page Serial Number field
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck search page
   TruckSearch.Serialnumber field search

Verify the truck Search page Description field
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck search page
   TruckSearch.Description field search

Verify the history button for current dealer truck
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck search page
   TruckSearch.Verify the history button for current dealer truck

Verify the history button for other dealer truck
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck search page
   TruckSearch.Verify the history button for other dealer truck

Verify the sorting options and truck searching
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck search page
   TruckSearch.Verify the sorting and searching

Verify the Equipment details page contents
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck search page
   TruckSearch.go to Equipment details page and verify contents

Verify the claim history button with claim history
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck search page
   TruckSearch.go to Equipment details verify the history page details

Verify the claim history button without claim history
   MyAccount.go to My Account Overview
   MyAccount.go to truck search page
   TruckSearch.go to equipment details page and verify the history button for no history available truck

Verify the Truck installation search criteria
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck installation page
   TruckInstallation.Verify the report search criteria

Verify the truck installation sorting and lazy load
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck installation page
   TruckInstallation.Verify the sorting in the truck insatallation page
   TruckInstallation.Verify the Search installation lazy load

Verify the Electric truck installation submit
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck installation page
   TruckInstallation.Submit the new electric truck installation

Verify the IC truck installation submit
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck installation page
   TruckInstallation.Submit the new IC truck installation

Verify the warranty management search criteria
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to warranty page
   WarrantyManagement.warranty claim number search
   WarrantyManagement.warranty workorder search
   WarrantyManagement.warranty submit date range search
   WarrantyManagement.warranty partno search
   WarrantyManagement.Warranty serialnumber search
   WarrantyManagement.Warranty approval date search
   WarrantyManagement.Warranty status search
   WarrantyManagement.claim type search
   WarrantyManagement.Dealet Action requird search
   WarrantyManagement.Warranty message search

verify the sorting and lazyload in the warranty management page
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to warranty page
   WarrantyManagement.verify the warranty management sorting
   WarrantyManagement.verify the warranty management lazyload

verify the truck claim pages and submit the truck claim
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to warranty page
   WarrantyManagement.Submit the truck claim

verify the part claim pages and submit the part claim
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to warranty page
   WarrantyManagement.Submit the part claim

verify the Frieght claim pages and submit the Frieght claim
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to warranty page
   WarrantyManagement.Submit the Freight Claim

Verify the truck transfer-Truck search and Truck transfer Equipment details page
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck transfer page
   TruckTransfer.Verify the truck transfer truck search page details
   TruckTransfer.Search any valid truck and verify the equipment details page

Verify the sorting and lazy load in truck transfer-Truck search page
   MyAccount.go to My Account Overview
   #MyAccount.Expand Product support section
   MyAccount.go to truck transfer page
   TruckTransfer.Verify the the sorting and lazy load in the truck transfer search page


Go Home
   HomePage.Go Home

Logout the site
   AdminLogin.Logout Dealer

Login with admin login credentials
   AdminLogin.Go Admin Login
   AdminLogin.Login with admin credentials

Verify the admin truck search page searhc criteria
   BackOfficeTruckSearch.Go to admin truck search
   BackOfficeTruckSearch.Dealernumber search

Verify the Admin truck search sorting and lazy load
   BackOfficeTruckSearch.Go to admin truck search
   BackOfficeTruckSearch.Dealernumber search
   BackOfficeTruckSearch.Verify the sorting and searching

verify the admin login truck details page
   BackOfficeTruckSearch.Go to admin truck search
   BackOfficeTruckSearch.Dealernumber search
   BackOfficeTruckSearch.go to Equipment details page and verify contents

Verify the admin installation report search
    BackOfficeInstallationReport.Go to Admin Installation report page
    BackOfficeInstallationReport.Verify the serial number search in admin installation page
    BackOfficeInstallationReport.Verify the Dealer number search in admin installation page
    BackOfficeInstallationReport.Verify the truck status search in the installation report page
    BackOfficeInstallationReport.All field search

Verify the admin installation report sorting and lazy load
    BackOfficeInstallationReport.Go to Admin Installation report page
    BackOfficeInstallationReport.Verify the bo Installation report sorting
    BackOfficeInstallationReport.Verify the Admin installation lazy load

Verify the admin warranty search criteria
  BoWarranty.Go to Admin Warranty
  BoWarranty.Admin warranty claim number search
  BoWarranty.Admin warranty dealer number search
  BoWarranty.Admin warranty workorder search
  BoWarranty.Admin warranty submit date range search
  BoWarranty.Admin claim type search
  BoWarranty.Admin Warranty status search
  BoWarranty.Admin Dealet Action requird search
  BoWarranty.Admin Warranty message search
  BoWarranty.Admin warranty partno search
  BoWarranty.Admin Warranty serialnumber search
  BoWarranty.Admin Truck Model Search
  BoWarranty.Admin Warranty Due date search
  BoWarranty.Admin Warranty Approval date search
  BoWarranty.Admin Next reviewer search

Verify the admin warranty sorting option
   BoWarranty.Go to Admin Warranty
   BoWarranty.verify the warranty management sorting

Verify the Admin warranty lazy load
   BoWarranty.verify the warranty management lazyload

Verify the bulk approval page
   BoWarranty.Go to Admin Warranty
   BoWarranty.Click the perform bulk approval link
   BoWarranty.Verify the bulk approval page and Pre Approved claims

Verify the truck claim details page for admin
   BoWarranty.Go to Admin Warranty
   BoWarranty.Verify admin claim details navigation
   BoWarranty.Verify the truck claim details page

Verify the Part claim details page for admin
   BoWarranty.Go to Admin Warranty
   BoWarranty.Verify admin part claim details navigation
   BoWarranty.Verify the part claim details page

Verify the Freight claim details page for admin
   BoWarranty.Go to Admin Warranty
   BoWarranty.Verify admin Freight claim details navigation
   BoWarranty.Verify the Freight claim details page