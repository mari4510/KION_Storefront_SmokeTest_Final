*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
*** Variables ***
#Plced Oorder list page elements
${MyAccount_PlacedOrders_Link} =    //a[@title='Placed Orders']
${PlacedOrders_PageHeading} =    Service Parts (Placed Order Search Results)
${OrderNoSearch} =    Order No.
${PurchaseOrderNumberSearch} =    Purchase Order No.:
${PurchaseOrderDateRangeSearch} =   //label[@for='purchaseOrderDateRange']
${OrderTypeSearch} =    Order Type:
${OrderStatusSearch} =    Order Status:
${PartNumberSearch} =    Part No.:
${SortbySearch} =    Sorted by:
${AscendingRadioSearch} =    ascending
${DescendingRadioSearch} =    descending
${SearchButton} =    //input[@id='searchTrucks']
${ResetButton} =    //input[@id='orderSearchFormClear']
${PrintButton} =    //a[@alt='Print Result List']
${SearchResultCount} =    //tbody//tr
${SerialNo_10} =    //td[normalize-space()='10']
${SerialNo_20} =    //td[normalize-space()='20']
${SerialNo_21} =    //td[normalize-space()='21']
${OrderNumberSearch_field} =    //input[@name='OrderNo']
${PurchaseOrderNumberSearchField} =    //input[@name='PONumber']
${PurchaseOrderDateRange_Fromfield} =    //input[@id='DateRangeStart']
${PurchaseOrderFromDate} =    12/04/2023
${PurchaseOrderDateRange_Tofield} =    //input[@id='DateRangeEnd']
${PurchaseOrderTodate} =    12/12/2023
${PC_OrderTypeDropDown} =    //select[@name='OrderType']
${OrderType_Emergency} =    //option[@value='ZEMR']
${OrderStatusDropDown} =    //select[@name='OrderStatus']
${CompletedOrderStatus} =    //option[@value='5']
${PartNumberSearchField} =    //input[@name='ProductIdentifier_1']
${PartNumber} =    118684
${AscendingRadioButton} =    //input[@value='ascending']
${OrderNumber_Value} =    2628570
${FirstrowOrderNumerField} =  //tbody[@id='OfflineOrderResutlsBody']//tr[1]//td[2]
${PurchaseOrderNumber} =    Test_123
${FirstrowpurchaseOrderNumerField} =  //tbody[@id='results-body']//tr[1]//td[4]
${DateRangeOrder} =    2630118
${EmergencyText} =    Emergency
${CompletedOrderText} =    Completed
${FirstOrderNumber} =    2569535
${PO_OrderNumberHeader} =    //th[@data-sort='DocumentNo']
${PO_PurchaseOrderNumberHeader} =    //th[@data-sort='PONumber']
${PO_PurchaseOrderDateHeader} =    //th[@data-sort='CreationDate']
${PO_OrderTypeHeader} =    //th[@data-sort='OrderType']
${PO_TotalPriceHeader} =    //th[@data-sort='GrandTotalGrossPricePCValue']
${PO_ContactnameHeader} =    //th[@data-sort='OriginalBuyerName']
${PO_StatusHeader} =    //th[@data-sort='Status']
${header_highlight} =    //th[@class='highlighted']
${OrderNumber_For_Details} =   //table[@id='OfflineOrderSearchResults']/tbody/tr[1]/td[2]
${FirstOrderNumberFromSearchResult} =  //table[@id='OfflineOrderSearchResults']/tbody/tr[1]/td[2]
#Plced Oorder Details page elements
${OD_OrderNumberLabel} =  Order Number:
#${OD_OrderNumber} =    //a[normalize-space()='2630213']
${OD_Page_Heading} =    Service Parts (Placed Order Summary)
${OD_ContactName_Label} =  Contact Name:
#${OD_ContactName} =  Mari CY
${OD_PoNumberLabel} =  Purchase Order Number
#${OD_PONumber} =  Test_123
${OD_PurchaseOrderDateLabel} =  Purchase Order Date:
#${OD_PurchaseOrderDate} =  01/09/24
${OD_OrderTypeLabel} =  Order Type:
#${OD_OrderType} =  Parts Critical Order
${OD_ShipmentTypeLabel} =   Shipment type:
#${OD_ShipmentType} =  Bestway
${OD_ShipmentmodeLabel} =  Shipment mode
#${OD_Shipmentmode} =  allow partial shipment
${OD_OrderStatusValueLabel} =  Order Status:
#${OD_OrderStatusValue} =  Completed
${OD_LineItemHeading} =  Placed Order Items
${OD_ItemColumn} =  Item
#${OD_SNO} =  1
${OD_PartnoColumn} =  Part No.
#${OD_Partno} =  X677267
${OD_PartNameColumn} =  Part Name
#${OD_PartName} =  HOSE SHEAVE
${OD_CatColumn} =  Cat.
#${OD_Cat} =  A
${OD_Ord.QtyColumn} =  Ord.Qty
#${OD_Ord.Qty} =  1
${OD_UnitColumn} =  Unit
#${OD_Unit} =  EA
${OD_Ext.PriceColumn} =   Ext.
#${OD_Ext.Price} =  $ 45.98
${OD_Del.QtyColumn} =  Del.Qty
${OD_Delivery DateColumn} =  Delivery Date
${OD_Delivery NoColumn} =  Delivery No.
${OD_TotalLabel} =  Total:
#${OD_TotalValue} =  $ 45.98
${OD_BackButton} =  //a[@class='btn btn-primary']

#TrackIt Link
${OrderNumber_Value_ForTrackIt} =  	2624355
${DeliveryNumber} =  //table[@id='results']/tbody/tr[1]/td[10]
${TrackItLinkText} =  TrackIt!
${TrackItlinkElement} =  //a[@title='TrackIt!']
${TrackPageHading} =  FedEx
*** Keywords ***
Verify the page elements
    [Documentation]  If the short doc gets longer, it can span
    page should contain    ${placedorders_pageheading}
    page should contain    ${ordernosearch}
    page should contain    ${PurchaseOrderNumberSearch}
    page should contain element   ${PurchaseOrderDateRangeSearch}
    page should contain    ${OrderTypeSearch}
    page should contain    ${OrderStatusSearch}
    page should contain    ${PartNumberSearch}
    page should contain    ${SortbySearch}
    page should contain    ${AscendingRadioSearch}
    page should contain    ${DescendingRadioSearch}
    page should contain element    ${SearchButton}
    page should contain element    ${ResetButton}
    page should contain element    ${PrintButton}
    sleep    2s
    Execute JavaScript    window.scrollBy(0,800)
    sleep    2s
    page should contain element    ${serialno_10}
    Execute Javascript   document.querySelector('#OfflineOrderSearchResultsDiv').scrollTop = 650;
    sleep    2s
    page should contain element    ${serialno_20}
    page should not contain element   ${serialno_21}

Default search
    click element    ${SearchButton}
    page should contain element    ${serialno_10}
    Click Element    ${MyAccount_PlacedOrders_Link}
Order No search
    Wait Until Page Contains Element    ${OrderNumberSearch_field}
    input text    ${OrderNumberSearch_field}    ${OrderNumber_Value}
    click element    ${searchbutton}
    Sleep    2s
    ${Expected_Order}=  set variable     ${OrderNumber_Value}
    ${actual_Order}=  get text    ${FirstrowOrderNumerField}
    Should Be Equal As Numbers    ${Expected_Order}  ${actual_order}
    #page should contain    ${OrderNumber_Value}
    #click element  ${ResetButton}
    Click Element    ${MyAccount_PlacedOrders_Link}
    
Search the completed orders
    Wait Until Page Contains Element    ${OrderNumberSearch_field} 
    input text    ${OrderNumberSearch_field}    ${OrderNumber_Value_ForTrackIt}
    click element    ${searchbutton}
    Sleep    2s
    ${Expected_CompletedOrder}=  set variable    ${OrderNumber_Value_ForTrackIt}
    ${actual_CompletedOrder}=  get text    ${FirstrowOrderNumerField}
    Sleep    2s
    Should Be Equal As Strings     ${Expected_CompletedOrder}   ${actual_Completedorder}
    #Wait Until Page Contains    ${OrderNumber_Value_ForTrackIt}
    #page should contain    ${OrderNumber_Value_ForTrackIt}

TrackIt Link verfication
    Wait Until Page Contains Element    ${FirstOrderNumberFromSearchResult}
    Click Element    ${FirstOrderNumberFromSearchResult}
    Click Element    ${DeliveryNumber}
    Page Should Contain     ${TrackItLinkText}
    Click Element   ${TrackItlinkElement}
    Switch Window   NEW
    Close Window
    Switch Window   MAIN

Purchase Order number search
    Wait Until Page Contains Element    ${PurchaseOrderNumberSearchField}
    input text    ${PurchaseOrderNumberSearchField}    ${PurchaseOrderNumber}
    click element    ${searchbutton}
    Sleep    2s
    ${status}=    Run Keyword And Return Status    SeleniumLibrary.Page Should Contain Element    ${FirstrowPurchaseOrderNumerField}
    ${variable}=    Set Variable If    '${status}' == 'PASS'    True    False
    #${variable}=    SeleniumLibrary.Page Should Contain Element    ${FirstrowPurchaseOrderNumerField}
    Run Keyword If    '${variable}' == True    Purchase order number verification 1
    ...    ELSE IF    '${variable}' == False   Purchase order number verification 2
    #click element    ${ResetButton}
    Click Element    ${MyAccount_PlacedOrders_Link}
    #sleep    1s

Purchase Order date range
    Wait Until Element Is Visible    ${PurchaseOrderDateRange_Fromfield}
    input text    ${PurchaseOrderDateRange_Fromfield}    ${PurchaseOrderFromDate}
    input text    ${purchaseorderdaterange_tofield}    ${PurchaseOrderTodate}
    click element    ${SearchButton}
    Wait Until Page Contains    ${DateRangeOrder}
    page should contain    ${DateRangeOrder}
    #click element    ${resetbutton}
    Click Element    ${MyAccount_PlacedOrders_Link}
    #sleep    3s
OrderType Search
    Execute JavaScript    window.scrollTo(250,0)
    Wait Until Element Is Visible    ${PC_OrderTypeDropDown}
    click element    ${PC_OrderTypeDropDown}
    Wait Until Element Is Visible    ${OrderType_Emergency}
    click element    ${OrderType_Emergency}
    #Sleep    1s
    click element    ${SearchButton}
    Wait Until Page Contains    ${EmergencyText}
    page should contain    ${EmergencyText}
    #click element    ${ResetButton}
    Click Element    ${MyAccount_PlacedOrders_Link}
    #sleep    3s
Order status search
    Execute Javascript  window.scrollTo(400,0)
    Wait Until Element Is Visible    ${OrderStatusDropDown}
    click element    ${OrderStatusDropDown}
    click element    ${CompletedOrderStatus}
    click element    ${searchbutton}
    #sleep    2s
    Wait Until Page Contains    ${CompletedOrderText}
    page should contain    ${CompletedOrderText}
    #click element    ${ResetButton}
    Click Element    ${MyAccount_PlacedOrders_Link}
    #sleep    3s
Part number search
    Wait Until Element Is Visible   ${partnumbersearchfield}
    input text    ${partnumbersearchfield}    ${partnumber}
    click element    ${SearchButton}
    #click element    ${ResetButton}
    Click Element    ${MyAccount_PlacedOrders_Link}
    #sleep    3s
Ascending search
    click element    ${AscendingRadioButton}
    click element    ${SearchButton}
    Wait Until Page Contains    ${FirstOrderNumber}
    page should contain    ${FirstOrderNumber}
    #click element    ${ResetButton}
    Click Element    ${MyAccount_PlacedOrders_Link}


Header sorting options
    click element    ${PO_OrderNumberHeader}
    page should contain element   ${header_highlight}
    click element    ${po_ordernumberheader}
    page should contain element   ${header_highlight}
    click element    ${PO_PurchaseOrderNumberHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_PurchaseOrderNumberHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_PurchaseOrderDateHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_PurchaseOrderDateHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_OrderTypeHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_OrderTypeHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_TotalPriceHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_TotalPriceHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_ContactnameHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_ContactnameHeader}
    page should contain element    ${header_highlight}
    click element    ${PO_StatusHeader}
    page should contain element    ${header_highlight}
    click element    ${po_statusheader}
    page should contain element    ${header_highlight}
    
Order No Decend sorting
  Click Element    ${PO_OrderNumberHeader}
  Sleep    2s
  Click Element    ${PO_OrderNumberHeader}
Order no for verify the details
  Click Element    ${MyAccount_PlacedOrders_Link}
  Click Element    ${OrderNumber_For_Details}
Verify the Order details page contents
  Page Should Contain    ${OD_Page_Heading}
  Page Should Contain    ${OD_OrderNumberLabel}
  #Page Should Contain    ${OD_OrderNumber}
  Page Should Contain    ${OD_PoNumberLabel}
  #Page Should Contain    ${OD_PoNumber}
  #Page Should Contain    ${OD_PurchaseOrderDate}
  Page Should Contain    ${OD_PurchaseOrderDateLabel}
  #Page Should Contain    ${OD_OrderType}
  Page Should Contain    ${OD_OrderTypeLabel}
  #Page Should Contain    ${OD_ContactName}
  Page Should Contain    ${OD_ContactName_Label}
  #Page Should Contain    ${OD_ShipmentType}
  Page Should Contain    ${OD_ShipmentTypeLabel}
  Page Should Contain    ${OD_ShipmentmodeLabel}
  #Page Should Contain    ${OD_Shipmentmode}
  Page Should Contain    ${OD_OrderStatusValueLabel}
  #Page Should Contain    ${OD_OrderStatusValue}
  Page Should Contain    ${OD_LineItemHeading}
  Page Should Contain    ${OD_ItemColumn}
  #Page Should Contain    ${OD_SNO}
  Page Should Contain    ${OD_PartnoColumn}
  #Page Should Contain    ${OD_Partno}
  Page Should Contain    ${OD_PartNameColumn}
  #Page Should Contain    ${OD_PartName}
  Page Should Contain    ${OD_CatColumn}
  #Page Should Contain    ${OD_Cat}
  #Page Should Contain    ${OD_Ord.Qty}
  Page Should Contain    ${OD_Ord.QtyColumn}
  Page Should Contain    ${OD_UnitColumn}
  #Page Should Contain    ${OD_Unit}
  Page Should Contain    ${OD_Ext.PriceColumn}
  #Page Should Contain    ${OD_Ext.Price}
  Page Should Contain    ${OD_Del.QtyColumn}
  Page Should Contain    ${OD_Delivery DateColumn}
  Page Should Contain    ${OD_Delivery NoColumn}
  Page Should Contain Element    ${OD_BackButton}
  Click Element   ${OD_BackButton}


Purchase order number verification 1
  ${Expected_PurchaseOrder}=  set variable     ${PurchaseOrderNumber}
  ${actual_PurchaseOrder}=  get text    ${FirstrowPurchaseOrderNumerField}
    Should Be Equal As Strings    ${Expected_PurchaseOrder}   ${actual_PurchaseOrder}
    page should contain    ${PurchaseOrderNumber}
    
Purchase order number verification 2
    Page Should Contain    No Placed Orders found!
