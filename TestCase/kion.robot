*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Kion_App.robot
Suite Setup    Begin Test
Suite Teardown    End Test
*** Variables ***
#Pre Requsite:
#1. Update the Installation serial number
#2. Update the Sorting values in the truck search
#3.

#robot -d Results TestCase
#robot -d Results -i 02 TestCase
${URL} =    https://tst.lindelink.com/
${BROWSER} =    Chrome
${Login-Mail} =    mar.ig10test@gmail.com
${Password} =    Test@123
*** Test Cases ***
To verify the all available page navigations as a guest user
    [Tags]    01    Smoke  hh
    Kion_App.Verify the guest user header
    Kion_App.Click order template icon in header
    Kion_App.Verify the page is navigated to the Login page
    Kion_App.Navigate to the home page
    Kion_App.Navigate to guest_CLP
    Kion_App.Navigate to guest_PLP
    Kion_App.Navigate to guest_PDP and verfy the details
    Kion_App.Navigate to the Guest SRP and verify the page

Logging in to the KION site      #When run whole test cases update the Suite setup and enable the test case 01
   [Tags]    02    Smoke
   Kion_App.Go to login page
   Kion_App.Login to the kion site  #loging in using #53464
   Kion_App.Select customer from cutomer selector
To verify the dealer changing through the header dealers dropdown
   [Tags]    03    Smoke  hh
    Kion_App.Switch the sunbelt dealer
    Kion_App.Navigate to the MyAccount and verify the Switched customer
    Kion_App.Switch the elevex dealer
Verify the home page contents for login user
   [Tags]    04  smoke
   KION_App.Verify the home page banner
   KION_App.Verify the home page middle contents
   Kion_App.Verify the home page featured products section
   Kion_App.Verify the home page footer section

To verify by adding the product to the worksheet from the home page
   [Tags]    05  smoke  hh
    Kion_App.Navigate to Home Page
    Kion_App.Click the add to worksheet link in the home page feautured products section

To verify the CLP page
    [Tags]   06  smoke  hh
    Kion_App.Click linde link in the header
    sleep	 2s
    Kion_App.Verify the refinement section
    sleep  2s
    Kion_App.Click maintanence category in CLP
    Kion_App.Go Home

To verify by adding the product to the worksheet from the PLP page(Grid View)
    [Tags]   07    Smoke
    Kion_App.Navigate to PLP
    sleep    2s
    kion_app.select ascending order in sort by in plp
    Kion_App.Add a product from PLP
    Kion_App.Go Home

To verify by adding the product to the worksheet from the product Quick view popup
    [Tags]   08    Smoke
    Kion_App.Navigate to PLP
    sleep    2s
    kion_app.select ascending order in sort by in plp
    Kion_App.Click addtoworksheet Button in Quick view
    Kion_App.Go Home

To verify the Refinements & Contents in the Product List Page, as Login user.
    [Tags]   09    Smoke
    Kion_App.Navigate to PLP
    sleep    2s
    Kion_App.Verfiy the refinement section is displaying or not
    Kion_App.Go Home

To verify by adding the product to the worksheet from the PLP page(List View)
    [Tags]   10    Smoke
    Kion_App.Navigate to PLP
    Kion_App.Swith PLP grid view to list view
    kion_app.select ascending order in sort by in plp
    Kion_App.Click PLP list view add to worksheet Button
    Kion_App.Swith PLP list view to grid view
    Kion_App.Go Home
To verify the product search using header search box
    [Tags]   11    Smoke
    Kion_App.Search the valid product
    Kion_App.Go Home
To verify the Refinements & Contents in the search result Page, as Login user.
    [Tags]   12    Smoke
    Kion_App.Navigate to the search result page
    Kion_App.Go Home

To verify by adding the product to the worksheet from the PDP page
    [Tags]   13    Smoke  PDP
    Kion_App.Navigate to the PDP page
    Kion_App.Click add to worksheet button from the PDP page
    Kion_App.Verify the added product in worksheet
    Kion_App.Go Home
To verify the all type of products by adding worksheet
    [Tags]   14   Smoke  PDP
    Kion_App.Add a Alternative products to the worksheet
    Kion_App.Add a Breakdown products to the worksheet
    Kion_App.Add replacement product to the worksheet
    Kion_App.Verify the all type of product are added in the worksheet
    Kion_App.Go Home
To verify by adding the product to the worksheet from the Compare page
    [Tags]   15   Smoke
    Kion_App.Add a compare page to worksheet
    Kion_App.Verify the compare page product in current worksheet
    Kion_App.Go Home

To verify by uploading all types of files are uploading in the worksheet page
    [Tags]   16    smoke
    Kion_App.Upload the xls file in the current worksheet
    Kion_App.Clear the worksheet products
    sleep    3s
    Kion_App.Upload the CSV file in the current worksheet
    Kion_App.Clear the worksheet products
    sleep    3s
    Kion_App.Upload the XLSX file in the current worksheet
    Kion_App.Clear the worksheet products
    Kion_App.Go Home

To verify by uploading mathpublishID file in the worksheet page
    [Tags]   17    Smoke
    Kion_App.Upload a MathPublisID file in the current worksheet
    Kion_App.Go Home

To verify the Export as CSV button in the current worksheet page
    [Tags]   18    Smoke
    Kion_App.Export the current worksheet details
    Kion_App.Go Home

To verify the order placing from the order worksheet using Emergency order Type
    [Tags]   19    Smoke
    Kion_App.Navigate to the currentwork sheet
    Kion_App.Upload the CSV file in the current worksheet
    Kion_App.Select Emergency order type in the current worksheet
    Kion_App.Add products to the shopping cart
    Kion_App.Place the order with all current worksheet products
    Kion_App.Go Home

To verify the order placing from the order worksheet using Stock order Type  #fail
    [Tags]   20    Smoke  t1
    Kion_App.Navigate to the currentwork sheet
    Kion_App.Upload the CSV file for Stock type order in the current worksheet
    Kion_App.Select Stock order type in the current worksheet
    Kion_App.Add products to the shopping cart
    Kion_App.Place the order with all current worksheet products
    Kion_App.Go Home

To verify the Stock order message in the checkout page  #fail
    [Tags]   21    Smoke
    Kion_App.Navigate to the currentwork sheet
    Kion_App.Add a <500 product to worksheet
    Kion_App.Select Stock order type in the current worksheet
    Kion_App.Add products to the shopping cart
    Kion_App.Try to place the stock order
    Kion_App.Verify the stock order message in the checkout page
    Kion_App.Go Home

To verify the My Account page navigations
    [Tags]   22    Smoke    EEE
    Kion_App.Verify the My Account Over view page
    Kion_App.Verify the Saved unplaced order page
    Kion_App.Verify the pending purchases page
    Kion_App.Verify the Rejected purchases page
    Kion_App.Verify the Subscriptions page
    Kion_App.Verify the Placed order page
    Kion_App.Verify the placed order details page
    Kion_App.Verify the BackOrders Page
    Kion_App.Verify the Backorders details page
    Kion_App.Verify the Truck sales page
    Kion_App.Verify the returns page
    Kion_App.Verify the warranty page
    Kion_App.Verify the truck Installations page
    Kion_App.Verify the truck search page
    Kion_App.Verify the purchase to Approve page
    Kion_App.Verify the Approval rejected purchases
    Kion_App.Verify the Approval Approved purchases
    Kion_App.Verify the BackInStock Notification
    Kion_App.Verify the changes in price Notification
    Kion_App.Verify the profile setting page
    Kion_App.Verify the Addressed page
    Kion_App.Verify the My Account payments page
    Kion_App.Verify the Users Page
    Kion_App.Go Home
To verify the Users page contents
    [Tags]   23    Smoke
    Kion_App.Verify the all contents in users page
    Kion_App.Go Home

To verify the Users details page
    [Tags]   24    Smoke
    Kion_App.Verify all page contents in the user details page
    Kion_App.Go Home
To verify the assign users button and Add user button in the users page
    [Tags]   25    Smoke
    Kion_App.Verify the assign userbutton in user list page
    Kion_App.Verify the add user button in the user list page
    Kion_App.Go Home

To verify the order placing from the Saved Unplaced order page using Emergency order type
    [Tags]   26    Smoke
    Kion_App.Navigate to the SavedUnplacedOrders_Emergency details page and place the order

To verify the order placing from the Saved Unplaced order page using Stock order type
    [Tags]   27    Smoke
    Kion_App.Navigate to the SavedUnplacedOrders_Stock details page and place the order

Verify the all details are present in the"Order Confirmation" email
    [Tags]   28    Smoke
    Kion_App.Verify the all components are displayed in the Order confirmation page
    Kion_App.Go Home

To verify the placed orders page contents and lazy load
    [Tags]   29    Smoke
    Kion_App.Verify the all elements in the placed orders list page
    Kion_App.Go Home

To verify the placed orders page by search criterias
    [Tags]   30    Smoke
    Kion_App.Verify the all search criterias in placed orders page
    Kion_App.Go Home

To verify the sorting options in the placed orders list page
    [Tags]   31    Smoke
    Kion_App.Verify the placed orders page sorting options
    Kion_App.Go Home

To verify the all details are displayed in the placed order details page
    [Tags]   32    Smoke
    Kion_App.Verify the Order details page contents
    Kion_App.Go Home

To verify the track link in the Order details invoice summary page
    [Tags]   33  smoke  cross1
    Kion_App.Verify the Trackit link for completed orders in invoice sumary page
    #Kion_App.Go Home

To verify the lazy load in the back orders page
   [Tags]   34    Smoke
    Kion_App.Verify the Back Orders page lazyload
    Kion_App.Go Home

To verify the all order details are displayed for each back orders in the back order list page
    [Tags]   35    Smoke
    Kion_App.Verify the Back Orders list page details
    Kion_App.Go Home

To verify the backorderlist page sorting options
   [Tags]   36    Smoke  cross1
   Kion_App.Verify the Back Order list sorting option
   Kion_App.Go Home

To verify the all details are displayed in the Back order details page
   [Tags]   37    Smoke
   Kion_App.Verify the Back Orders Details page contents
   Kion_App.Go Home

To verify the search criteria in the Returns page
   [Tags]   39    Smoke
   Kion_App.Verify the returns page search criteria
   Kion_App.Go Home

To verify the sorting option and lazy load in the Returns page
   [Tags]   40    Smoke
   Kion_App.Verify the returns page Sorting and LazyLoad
   Kion_App.Go Home

To verify the informations are displaying in the New Return Form page
   [Tags]   41    Smoke
   Kion_App.Verify the new return form page information
   Kion_App.Submit new return
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Pricing / Billing error button in Return Reasons window
   [Tags]   42    Smoke
   Kion_App.Verify the new return form information for price billing Error Return Reason
   Kion_App.Go Home


To verify the informations are displaying In the Line Item for Dealer Ordered in Error button in Return Reasons window
   [Tags]   43    Smoke
   Kion_App.Verify the new return form information for Dealer Order in Error Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Incorrectly Specified button in Return Reasons window
   [Tags]   44    Smoke  change
   Kion_App.Verify the new return form information for Incorrectly Specified Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Documentation / Manual Incorrect button in Return Reasons window
   [Tags]   45    Smoke
   Kion_App.Verify the new return form information for Documentation/Manual Incorrect Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Short Shipped Incorrect button in Return Reasons window
   [Tags]   46    Smoke
   Kion_App.Verify the new return form information for Short Shipped Incorrect Return Reason
   Kion_App.Go Home


 To verify the informations are displaying In the Line Item for Duplicate Shipment button in Return Reasons windo
   [Tags]   47    Smoke
   Kion_App.Verify the new return form information for Duplicate Shipment Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Mismarked Inventory button in Return Reasons window
   [Tags]   48    Smoke
   Kion_App.Verify the new return form information for Mismarked Inventory Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Damaged in Transit by Carrier button in Return Reasons window
   [Tags]   49    Smoke
   Kion_App.Verify the new return form information for Damaged in Transit by Carrier Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Damaged in Transit b/o Packaging button in Return Reasons window
   [Tags]   50    Smoke  test
   Kion_App.Verify the new return form information for Damaged in Transit b/o Packaging Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Lost in Transit button in Return Reasons window
   [Tags]   51    Smoke  test
   Kion_App.Verify the new return form information for Damaged in Lost in Transit Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Freight Overcharge button in Return Reasons window
   [Tags]   52    Smoke
   Kion_App.Verify the new return form information for Freight Overcharge Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Freight for Re-order button in Return Reasons window
   [Tags]   53    Smoke
   Kion_App.Verify the new return form information for Freight for Re-order Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Freight for Return button in Return Reasons window
   [Tags]   54    Smoke
   Kion_App.Verify the new return form information for Freight for Return Reason
   Kion_App.Go Home

To verify the informations are displaying In the Line Item for Core Exchange button in Return Reasons window
   [Tags]   55    Smoke
   Kion_App.Verify the new return form information for Core Exchange Return Reason
   Kion_App.Go Home

To verify by Proceed the Line Item for Pricing / Billing error button in Return Reasons window
   [Tags]   56    Smoke
   Kion_App.Submit the New return using price billing error return reason
   Kion_App.Go Home

To verify by clicking New Annual Return Request link in the Returns page
   [Tags]  57     Smoke
   Kion_App.Click the annual returns link in the returns page
   Log    Waiting for Page Access
   Kion_App.Go Home
To verify the annual returns page landing page contents
   [Tags]  58     Smoke
   [Documentation]   Need the Annual Returns page access for this case
   Log    Waiting for Page Access
   Kion_App.Go Home

To verify the search criterias in the Truck sales page
   [Tags]  59     Smoke
   Kion_App.Verify the truck sales list page search criteria
   Kion_App.Go Home

To verify by using same Order details in more than 1 search criteria and Click "Search Trucks" button in the Truck sales Page
   [Tags]  60     Smoke
   Kion_App.Verify the truck sales search with more than one search criteria
   Kion_App.Go Home

To verify the lazy load in the truck sales search results
   [Tags]  61     Smoke
   Kion_App.Verify the truck sales search result lazy load
   Kion_App.Go Home

To verify the sorting options in the Truck sales search result in the truck sales page
   [Tags]  62     Smoke
   Kion_App.Verify the sorting options in trucksales search results
   Kion_App.Go Home

To verify the informations are displaying in the Truck Order detail Page
   [Tags]  63     Smoke  EEE
   Kion_App.Verify the truck details page contents
   Kion_App.Go Home

To verify the Serial number field in the Truck search page.
   [Tags]  64     Smoke  EEE
   Kion_App.Verify the truck Search page Serial Number field
   Kion_App.Go Home

To verify the Description field in the Truck search page.
   [Tags]  65     Smoke  EEE
   Kion_App.Verify the truck Search page Description field
   Kion_App.Go Home

To verify by clicking the find serial number button with valid current dealer truck in the truck search page
   [Tags]  66     Smoke  EEE
   Kion_App.Verify the history button for current dealer truck
   Kion_App.Go Home

To verify by clicking the find serial number button with valid Other dealer truck in the truck search page
   [Tags]  67     Smoke  EEE
   Kion_App.Verify the history button for other dealer truck
   Kion_App.Go Home

To verify the sorting option and lazy load in the truck search page
   [Tags]  68     Smoke  EEE
   Kion_App.Verify the sorting options and truck searching
   Kion_App.Go Home

To verify the user is able to access the Equipment Overview page.
   [Tags]  69     Smoke  EEE
   Kion_App.Verify the Equipment details page contents
   Kion_App.Go Home

To verify the history button with claim history and without claim history in the equipment details page
   [Tags]  70     Smoke  EEE
   Kion_App.Verify the claim history button with claim history
   Kion_App.Verify the claim history button without claim history
   Kion_App.Go Home

To verify the search criteria in the Truck installations page
   [Tags]  71     Smoke  EEE
   Kion_App.Verify the Truck installation search criteria
   Kion_App.Go Home

To verify the sorting option and lazy load in the Truck Installations page
   [Tags]  72     Smoke  EEE
   Kion_App.Verify the truck installation sorting and lazy load
   Kion_App.Go Home

To verify the Installation report submitting for Electric Truck type in the truck installation page
   [Tags]  73     Smoke
   Skip
   Kion_App.Verify the Electric truck installation submit
   Kion_App.Go Home

To verify the Installation report submitting for IC Truck type in the truck Installation page
   [Tags]  74     Smoke
   Skip
   Kion_App.Verify the IC truck installation submit
   Kion_App.Go Home

To verify the search criteria in the Warranty management page
   [Tags]  75     Smoke  EEE
   Kion_App.Verify the warranty management search criteria
   Kion_App.Go Home

To verify the sorting option and lazy load in the warranty management page
   [Tags]  76     Smoke  EEE
   Kion_App.verify the sorting and lazyload in the warranty management page
   Kion_App.Go Home

To verify the truck claim pages and submitting the truck claim in the warranty page
   [Tags]  77     Smoke  EEE
   Kion_App.verify the truck claim pages and submit the truck claim
   Kion_App.Go Home


To verify the part claim page navigations and submitting part claim in the warranty management page
   [Tags]  78     Smoke  EEE
   Kion_App.verify the part claim pages and submit the part claim
   Kion_App.Go Home

To verify the freight claim page navigations and submitting Freight claim in the warranty management page
   [Tags]  79     Smoke  EEE
   Kion_App.verify the Frieght claim pages and submit the Frieght claim
   Kion_App.Go Home

Verify the Search Trucks button by entering valid value in Truck transfer- Truck Search page.
   [Tags]  81     Smoke  EEE
   Kion_App.Switch the sunbelt dealer
   Kion_App.Verify the truck transfer-Truck search and Truck transfer Equipment details page
   Kion_App.Go Home

To verify the sorting option and lazy load in the Truck Transfer-Truck search page search results
   [Tags]  82     Smoke
   Kion_App.Switch the sunbelt dealer
   Kion_App.Verify the sorting and lazy load in truck transfer-Truck search page
   Kion_App.Go Home

To verify the Search criteria in the back office Truck search page
    [Tags]  85    Smoke  Admin
    Kion_App.Logout the site
    Kion_App.Go to login page
    Kion_App.Login with admin login credentials
    Kion_App.Verify the admin truck search page searhc criteria
    Kion_App.Go Home


To verify the sorting option and lazy load in the Back office truck search page
   [Tags]  86    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the Admin truck search sorting and lazy load
   Kion_App.Go Home

To verify the Back Office Equipment details page
   [Tags]  87    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.verify the admin login truck details page
   Kion_App.Go Home

To verify the search criteria in the Back office installation report page
   [Tags]  88    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the admin installation report search
   Kion_App.Go Home


To verify the sorting option and lazy load in the Back Office installation report page
   [Tags]  89    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the admin installation report sorting and lazy load
   Kion_App.Go Home


To verify the search criteria in the Back Office warranty management page
   [Tags]  95    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the admin warranty search criteria
   Kion_App.Go Home

To verify the sorting option and lazy load in the Back office warranty page
   [Tags]  96    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the admin warranty sorting option
   Kion_App.Verify the Admin warranty lazy load
   Kion_App.Go Home

To verify the perform bulk Approval link in the back office warranty management page
   [Tags]  97    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the bulk approval page
   Kion_App.Go Home
To verify the Truck claim details page as a back office warranty management page
   [Tags]  98    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the truck claim details page for admin
   Kion_App.Go Home

To verify the Part claim details page as a back office warranty management page
   [Tags]  99    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the Part claim details page for admin
   Kion_App.Go Home

To verify the Freight claim details page as a back office warranty management page
   [Tags]  100    Smoke  Admin
#   Kion_App.Go to login page
#   Kion_App.Login with admin login credentials
   Kion_App.Verify the Freight claim details page for admin
   Kion_App.Go Home