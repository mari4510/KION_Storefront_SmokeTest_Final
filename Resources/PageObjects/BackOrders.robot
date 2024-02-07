*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#BackOrders List Page
${BackOrdersPageHeading} =  Back Order Report
${BO_PrintButton} =  //a[@alt='Print Result List']
${BO_BackorderNo} =  //table[@id='results']/tbody/tr[1]/td[5]
${BO-ItemColumnHeader} =  Item
${BO_PartNoColumn} =  //th[@data-sort='ProductSKU']
${BO_OpenQtyColumn} =  //th[@data-sort='Quantity']
${BO_TotalColumn} =  //th[@data-sort='NetPrice']
${BO_OrderNoColumn} =  //th[@data-sort='OrderNo']
${BO_PoSClumn} =  //th[normalize-space()='Pos']  #clickingnot working
${BO_TypeColumn} =  //th[@data-sort='OrderType']
${BO_OrderDateColumn} =  //th[@data-sort='CreationDate']
${BO_PoCOlumnHeader} =  //th[@data-sort='PONumber']
${BO_ShipTypeColumnHeader} =  //th[@data-sort='ShipmentType']
${BO_ShimentModeColumnHeader} =  //th[@data-sort='ShipmentMode']
${BO_ExpectedAvailDateColumnHeader} =  //th[@data-sort='AvailableDate']
${BackOrdersResultRows} =  //tbody[@id='results-body']/tr
${BO_ResultsBody} =  //div[@id='TruckSearchResultsDiv']
${BO_serialno_10} =  //table[@id='results']/tbody/tr[10]/td[1]
${BO_serialno_11} =  //table[@id='results']/tbody/tr[11]/td[1]
${BO_serialno_20} =  //table[@id='results']/tbody/tr[20]/td[1]
${BO_Serialno_21} =  //table[@id='results']/tbody/tr[21]/td[text()='21']
${BO_Partno_AscendValue} =  111
${BO_OpenQuantity_AscendValue_01} =  1
${BO_OpenQuantity_AscendValue_02} =  EA
${BO_Total_AscendValue} =  1.81
${BO_Orderno_AscendValue} =  2607994
${BO_Pos_AscendValue} =  12
${BO_Type_AscendValue} =  Emergency
${BO_OrderDate_AscendValue} =  01/20/23
${BO_PoNo_AscendValue} =  100
${BO_ShipType_AscendValue} =  Bestway
${BO_ShipMode_AscendValue} =  complete
${BO_EXPAvailDate_AscendValue} =  open
#BackOrder Details Page contents
${BOD_BackOrderNumber} =  //table[@id='results']/tbody/tr[1]/td[5]
${BOD_BackOrderPageHeading} =  Service Parts (Placed Order Summary)
${BOD_OrderNumberLabel} =  Order Number:
${BOD_OrderNumberValue} =  2630007
${BOD_PurchaseOrderNumberlabel} =  Purchase Order Number:
${BOD_PurchaseOrderNumberValue} =  123
${BOD_PurchaseOrderDatelabel} =  Purchase Order Date:
${BOD_PurchaseOrderDateValue} =  09/27/23
${BOD_OrderTypelabel} =  Order Type:
${BOD_OrderTypeValue} =  Emergency Order
${BOD_ContactNamelabel} =  Contact Name:
${BOD_ContactNameValue} =  Mari CY
${BOD_ShipmentTypelabel} =  Shipment Type:
${BOD_ShipmentTypeValue} =  Bestway
${BOD_ShipmentModelabel} =  Shipment Mode:
${BOD_ShipmentModeValue} =  allow partial shipment
${BOD_ShipToAddressLable_01} =  Ship-To
${BOD_ShipToAddressLable_02} =  Address:
${BOD_ShipToAddressValue_01} =  CE ZINC
${BOD_InsuranceOptionLabel} =  Insurance Option:
${BOD_InsuranceOptionValue} =  Not Insured
${BOD_OrderStatusLabel_01} =  Order
${BOD_OrderStatusLabel_02} =  Status:
${BOD_OrderStatusValue} =  New
${BOD_PlacedOrderItemsHeading} =  Placed Order Items
${BOD_ItemColumn} =  Item
#${OD_SNO} =  1
${BOD_PartnoColumn} =  Part No.
#${OD_Partno} =  X677267
${BOD_PartNameColumn} =  Part Name
#${OD_PartName} =  HOSE SHEAVE
${BOD_CatColumn} =  Cat.
#${OD_Cat} =  A
${BOD_Ord.QtyColumn} =  Ord.Qty
#${OD_Ord.Qty} =  1
${BOD_UnitColumn} =  Unit
#${OD_Unit} =  EA
${BOD_Ext.PriceColumn} =   Ext.
#${OD_Ext.Price} =  $ 45.98
${BOD_Del.QtyColumn} =  Del.Qty
${BOD_Delivery DateColumn} =  Delivery Date
${BOD_Delivery NoColumn} =  Delivery No.
${BOD_TotalLabel} =  Total:
#${OD_TotalValue} =  $ 45.98
${BOD_BackButton} =  //a[@class='btn btn-primary']
${BOD_CheckStatusButton} =  //button[@id='CheckStatusButton']


*** Keywords ***
Verify the backorder list page
   Page Should Contain    ${BackOrdersPageHeading}
   Page Should Contain Element    ${BO_PrintButton}
   Page Should Contain   ${BO-ItemColumnHeader}
   Page Should Contain Element    ${BO_PartNoColumn}
   Page Should Contain Element    ${BO_OpenQtyColumn}
   Page Should Contain Element    ${BO_TotalColumn}
   Page Should Contain Element    ${BO_OrderNoColumn}
   Page Should Contain Element    ${BO_PoSClumn}
   Page Should Contain Element    ${BO_TypeColumn}
   Page Should Contain Element    ${BO_OrderDateColumn}
   Page Should Contain Element    ${BO_PoCOlumnHeader}
   Page Should Contain Element    ${BO_ShipTypeColumnHeader}
   Page Should Contain Element    ${BO_ShimentModeColumnHeader}
   Page Should Contain Element    ${BO_ExpectedAvailDateColumnHeader}

Verify the back orders list page Lazy load
    sleep    5s
    Execute JavaScript    window.scrollBy(0,400)
    sleep    5s
    page should contain element    ${BO_serialno_10}
    Execute Javascript   document.querySelector('#TruckSearchResultsDiv').scrollTop = 300;
    sleep    5s
    page should contain element    ${BO_serialno_20}
    page should not contain element    ${BO_serialno_21}
    
BackOrders Sorting
    [Documentation]  Pos column not clickable
    Click Element    ${BO_PartNoColumn}
    Sleep    1s
    Page Should Contain  ${BO_Partno_AscendValue}
    Click Element    ${BO_PartNoColumn}
    Sleep    2s
    Click Element    ${BO_OpenQtyColumn}
    Sleep    2s
    #${BO_OpenQuantity_AscendValue}    Set Variable  ${BO_OpenQuantity_AscendValue_01}\n${BO_OpenQuantity_AscendValue_02}
    #Page Should Contain  ${BO_OpenQuantity_AscendValue}
    Click Element    ${BO_OpenQtyColumn}
    Sleep    2s
    Click Element    ${BO_TotalColumn}
    Sleep    2s
    Page Should Contain    ${BO_Total_AscendValue}
    Click Element    ${BO_TotalColumn}
    Sleep    2s
    Click Element    ${BO_OrderNoColumn}
    Sleep    2s
    Page Should Contain    ${BO_Orderno_AscendValue}
    Click Element    ${BO_OrderNoColumn}
    Sleep    2s
    #Click Element    ${BO_PoSClumn}
    #Page Should Contain    ${BO_Pos_AscendValue}
    #Click Element    ${BO_PoSClumn}
    Click Element    ${BO_TypeColumn}
    Sleep    2s
    Page Should Contain  ${BO_Type_AscendValue}
    Click Element    ${BO_TypeColumn}
    Sleep    2s
    Click Element    ${BO_OrderDateColumn}
    Sleep    2s
    Page Should Contain    ${BO_OrderDate_AscendValue}
    Click Element    ${BO_OrderDateColumn}
    Sleep    1s
    Click Element    ${BO_PoCOlumnHeader}
    Sleep    2s
    Page Should Contain    ${BO_PoNo_AscendValue}
    Click Element    ${BO_PoCOlumnHeader}
    Sleep    2s
    Click Element    ${BO_ShipTypeColumnHeader}
    Sleep    2s
    Page Should Contain    ${BO_ShipType_AscendValue}
    Click Element    ${BO_ShipTypeColumnHeader}
    Sleep    2s
    Click Element    ${BO_ShimentModeColumnHeader}
    Sleep    2s
    Page Should Contain    ${BO_ShipMode_AscendValue}
    Click Element    ${BO_ShimentModeColumnHeader}
    Sleep    2s
    Click Element    ${BO_ExpectedAvailDateColumnHeader}
    Sleep    2s
    Page Should Contain    ${BO_EXPAvailDate_AscendValue}
    Click Element    ${BO_ExpectedAvailDateColumnHeader}

Go to back orders details page and verify the backorder details pagecontents
   Click Element    ${BOD_BackOrderNumber}
   Page Should Contain    ${BOD_BackOrderPageHeading}
   Page Should Contain    ${BOD_OrderNumberLabel}
   Page Should Contain    ${BOD_OrderNumberValue}
   Page Should Contain    ${BOD_PurchaseOrderNumberlabel}
   Page Should Contain    ${BOD_PurchaseOrderNumberValue}
   Page Should Contain    ${BOD_PurchaseOrderDatelabel}
   Page Should Contain    ${BOD_PurchaseOrderDateValue}
   Page Should Contain    ${BOD_OrderTypeLabel}
   Page Should Contain    ${BOD_OrderTypeValue}
   Page Should Contain    ${BOD_ContactNamelabel}
   Page Should Contain    ${BOD_ContactNameValue}
   Page Should Contain    ${BOD_ShipmentTypelabel}
   Page Should Contain    ${BOD_ShipmentTypeValue}
   Page Should Contain    ${BOD_ShipmentModelabel}
   Page Should Contain    ${BOD_ShipmentModeValue}
   ${ShiptoAddress_content}    Set Variable  ${BOD_ShipToAddressLable_01}\n${BOD_ShipToAddressLable_02}
   Page Should Contain    ${ShiptoAddress_content}
   Page Should Contain    ${BOD_ShipToAddressValue_01}
   Page Should Contain    ${BOD_InsuranceOptionLabel}
   Page Should Contain    ${BOD_InsuranceOptionValue}
   ${BOD_OrderStatusLabel}    Set Variable  ${BOD_OrderStatusLabel_01}\n${BOD_OrderStatusLabel_02}
   Page Should Contain    ${BOD_OrderStatusLabel}
   Page Should Contain    ${BOD_OrderStatusValue}
   Page Should Contain    ${BOD_PlacedOrderItemsHeading}
   Page Should Contain    ${BOD_ItemColumn}
   Page Should Contain    ${BOD_PartNameColumn}
   Page Should Contain    ${BOD_PartnoColumn}
   Page Should Contain    ${BOD_CatColumn}
   Page Should Contain    ${BOD_Ord.QtyColumn}
   Page Should Contain    ${BOD_UnitColumn}
   Page Should Contain    ${BOD_Ext.PriceColumn}
   Page Should Contain    ${BOD_Del.QtyColumn}
   Page Should Contain    ${BOD_Delivery DateColumn}
   Page Should Contain    ${BOD_Delivery NoColumn}
   Page Should Contain Element    ${BOD_CheckStatusButton}
   Page Should Contain Element    ${BOD_BackButton}