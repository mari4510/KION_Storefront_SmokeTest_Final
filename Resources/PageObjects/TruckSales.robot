*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
*** Variables ***
#Search section:
${TS_SearchSectionHeader} =  Search for Truck Orders
${TS_Orderlabel} =  Order #:
${TS_OrderTextField} =  //input[@id='TruckSales_OrderNo']
${TS_OrderValue} =  1440343
${TS_PurchaseOrderLabel} =  Purchase Order #:
${TS_PurchaseOrderValue} =  54144
${TS_PurchaseOrderTextField} =  //input[@id='TruckSales_PONumber']
${TS_PurchaseorderDateRangelabel} =  Purchase Order Date Range:
${TS_PurchaseorderFromDateField} =  //input[@name='DateRangeStart']
${TS_PurchaseorderFromDateValue} =  03/22/2023
${TS_PurchaseorderToDateField} =  //input[@name='DateRangeEnd']
${TS_PurchaseorderToDateValue} =  01/18/2024
${TS_TruckModelLabel} =  Truck Model #:
${TS_TruckModelValue} =  EW30 1101
${TS_TruckModelField} =  //input[@id='TruckSales_ModelNumber']
${TS_OrderStatusLabel} =  Order Status:
${TS_OrderStatusDropdown} =  //select[@name='OrderStatus']
${TS_OpenStatus} =  //option[.='Open']
${TS_CompletedStatus} =  //option[.='Completed']
${TS_ClearSearchButton} =  //button[@id='truck-order-search-reset']
${TS_SearchTrucksButton} =  //button[.='Search Trucks']
${TS_PrintButton} =  //a[@title='Print']
#Search Result Columns and sorting
${TS_ItemColumn} =  Item
${TS_OrderColumn} =  //th[@data-sort='DocumentNo']
${TS_OrderColumnAsc} =  1139788
${TS_PoColumn} =  //th[@data-sort='PONumber']
${TS_PoColumnAsc} =  01HA23450
${TS_PoDateColumn} =  //th[@data-sort='CreationDate']
${TS_PoDateColumnAsc} =  01/29/03
${TS_TruckModelColumn} =  //th[@data-sort='TruckModel']
${TS_TruckModelColumnAsc} =  	E-Frame 1220 x 1220mm RAL 1018
${TS_OrderReasonColumn} =  //th[@data-sort='OrderReason']
${TS_OrderReasonColumnAsc} =   Stock
${TS_TotalColumn} =  //th[@class='table-price']
${TS_TotalColumnAscLocation} =  //tbody/tr[1]/td[7]
${TS_TotalColumnAscValue} =  $ 0.00
${TS_StatusColumn} =  //th[@data-sort='Status']
${TS_StatusColumnAsc} =  Cancelled: See order notes
${TS_ShipTypeColumn} =  //th[@data-sort='ShipmentType']
${TS_ShipTypeColumnAsc} =  Dealer to advise
${TS_ScheduledShipdateColumn} =  //th[@data-sort='ScheduledDeliveryDate']
${TS_ScheduledShipdateColumnAsc} =  //tbody/tr[1]/td[10]  #Empty Value
${TS_IncotermsColumn} =  //th[@data-sort='Incoterms']
${TS_IncotermsColumnAscLocation} =  //tbody/tr[1]/td[11]
${TS_IncotermsColumnAsc} =  DAP  DIRECT SHIP
${TS_PaymentTermsColumn} =  //th[@data-sort='PaymentTerms']
${TS_PaymentTermsColumnAsc} =  F00
${TS_EndUserColumn} =  //th[@data-sort='EndUser']
${TS_EndUserColumnAsc} =  A.LASSONDE INC ROUGEMONT QC J0L 1M0
${DateRangeResult} =  1439673
${CompletedStatusValue} =  Completed
#Lazy Load
${TS_serialno_10} =  //table[@id='truck-order-search-results']/tbody/tr[10]/td[1]
${TS_serialno_20} =  //table[@id='truck-order-search-results']/tbody/tr[20]/td[1]
${TS_serialno_21} =  //table[@id='truck-order-search-results']/tbody/tr[22]/td[1]
#truck sales details
${TSD_Heading} =  Truck Sales
${TSD_TruckOrderSummaryHeading} =  Truck Order Summary (Truck Sales)
${TSD_OrderLabel} =  Order #:
${TSD_PurchaseOrderLabel} =  Purchase Order #:
${TSD_PurchaseOrderDateLabel} =  Purchase Order Date:
${TSD_OrderReasonLabel} =  Order Reason:
${TSD_FactoryShipDateLabel} =  Factory Ship Date:
${TSD_BillToAddressLabel} =  Bill-To-Address:
${TSD_ShiptoAddressLabel} =  Ship-To-Address:
${TSD_MessageLabel} =  Message:
${TSD_TruckmodelLabel} =  Truck Model:
${TSD_ShipmentTypeLabel} =  Shipment Type:
${TSD_IncotermsLabel} =  Incoterms:
${TSD_PaymentTermsLabel} =  Payment Term:
${TSD_OrderStatusLabel} =  Order Status:
${TSD_LineItemHeading} =  Truck Order Items
${TSD_LineItemOrderHeading} =  Order
${TSD_LineItemDeliveryHeading} =  Delivery
${TSD_ItemColumn} =  Item
${TSD_TruckOptionColumn} =  Truck Option
${TSD_QTYColumn} =  Qty
${TSD_EXTPriceColumn} =  Ext Price
${TSD_Quantity Clumn} =  Qty
${TSD_DateColumn} =  Date
${TSD_DocNoColumn} =  Doc No.
${TSD_TotalNetLabel} =  Total Net:
${TSD_BackButton} =  //button[@class='btn btn-primary']
${TSD_PrtintButton} =  //a[@title='Print']

*** Keywords ***
Verify the truck sales search page contents
  Page Should Contain    ${TS_SearchSectionHeader}
  Page Should Contain    ${TS_Orderlabel}
  Page Should Contain Element    ${TS_OrderTextField}
  Page Should Contain  ${TS_PurchaseOrderLabel}
  Page Should Contain Element    ${TS_PurchaseOrderTextField}
  Page Should Contain    ${TS_PurchaseorderDateRangelabel}
  Page Should Contain Element    ${TS_PurchaseorderFromDateField}
  Page Should Contain Element    ${TS_PurchaseorderToDateField}
  Page Should Contain    ${TS_TruckModelLabel}
  Page Should Contain Element    ${TS_TruckModelField}
  Page Should Contain   ${TS_OrderStatusLabel}
  Page Should Contain Element    ${TS_OrderStatusDropdown}
  Page Should Contain Element    ${TS_ClearSearchButton}
  Page Should Contain Element    ${TS_SearchTrucksButton}

Order number search
  Input Text    ${TS_OrderTextField}    ${TS_OrderValue}
  Sleep    2s
  Click Element    ${TS_SearchTrucksButton}
  Sleep    1s
  Page Should Contain    ${TS_OrderValue}
  Click Element    ${TS_ClearSearchButton}
Purchase OrderNumber search
  Input Text    ${TS_PurchaseOrderTextField}    ${TS_PurchaseOrderValue}
  Sleep    3s
  Click Element    ${TS_SearchTrucksButton}
  Sleep    1s
  Page Should Contain    ${TS_PurchaseOrderValue}
  Click Element    ${TS_ClearSearchButton}

Purchase Order date range search
  Click Element    ${TS_PurchaseorderFromDateField}
  Input Text    ${TS_PurchaseorderFromDateField}    ${TS_PurchaseorderFromDateValue}
  Sleep    2s
  Click Element    ${TS_PurchaseorderToDateField}
  Input Text    ${TS_PurchaseorderToDateField}    ${TS_PurchaseorderToDateValue}
  Press Keys    ${TS_PurchaseorderToDateField}    ENTER
  Sleep    2s
  Click Element    ${TS_SearchTrucksButton}
  Sleep    2s
  Click Element    ${TS_OrderColumn}
  Sleep    1s
  Page Should Contain    ${DateRangeResult}
  Click Element    ${TS_ClearSearchButton}
  
Truck Model search
  Input Text    ${TS_TruckModelField}    ${TS_TruckModelValue}
  Sleep    2s
  Click Element    ${TS_SearchTrucksButton}
  Sleep    1s
  Page Should Contain    ${TS_TruckModelValue}
  Sleep    1s
  Click Element    ${TS_ClearSearchButton}
  
Order status search
  Click Element    ${TS_OrderStatusDropdown}
  Sleep    2s
  Click Element    ${TS_CompletedStatus}
  Sleep    1s
  Page Should Contain    ${CompletedStatusValue}
  Click Element    ${TS_ClearSearchButton}
  
Search Sale report with more search criteria
  Input Text    ${TS_OrderTextField}    ${TS_OrderValue}
  Input Text    ${TS_PurchaseOrderTextField}    ${TS_PurchaseOrderValue}
  Click Element    ${TS_OrderStatusDropdown}
  Click Element    ${TS_OpenStatus}
  Click Element    ${TS_SearchTrucksButton}
  Page Should Contain    ${TS_OrderValue}

Verify the lazy load in the truck sales search result
  Click Element    ${TS_SearchTrucksButton}
  sleep    5s
  Execute JavaScript    window.scrollBy(0,800)
  sleep    5s
  page should contain element    ${TS_serialno_10}
  Execute Javascript   document.querySelector('.table-responsive.freeze-header.min-records').scrollTop=100;
  sleep    5s
  Execute Javascript   document.querySelector('.table-responsive.freeze-header.min-records').scrollTop=900;
  Sleep    3s
  page should contain element    ${TS_serialno_20}
  page should not contain element    ${TS_serialno_21}

Verify the trucksales search result sorting option
  Click Element    ${TS_SearchTrucksButton}
  Click Element    ${TS_OrderColumn}
  Sleep    2s
  Page Should Contain    ${TS_OrderColumnAsc}
  Click Element    ${TS_PoColumn}
  Sleep    2s
  Page Should Contain    ${TS_PoColumnAsc}
  Click Element    ${TS_PoDateColumn}
  Sleep    2s
  Page Should Contain    ${TS_PoDateColumnAsc}
  Click Element    ${TS_TruckModelColumn}
  Sleep    2s
  Page Should Contain    ${TS_TruckModelColumnAsc}
  Click Element    ${TS_OrderReasonColumn}
  Sleep    2s
  Page Should Contain    ${TS_OrderReasonColumnAsc}
  Click Element    ${TS_TotalColumn}
  Sleep    2s
  ${actual_value}=    Get Text    xpath=//tbody//tr[1]//td[7]  # Adjust the XPath accordingly
  ${expected_value}=    Set Variable    $ 0.00
  Should Be Equal As Strings    ${actual_value}    ${expected_value}
  Click Element    ${TS_StatusColumn}
  Sleep    2s
  Page Should Contain    ${TS_StatusColumnAsc}
  Click Element    ${TS_ShipTypeColumn}
  Sleep    2s
  Page Should Contain    ${TS_ShipTypeColumnAsc}
  Click Element    ${TS_ScheduledShipdateColumn}
  Sleep    2s
  ${actual_value}=    Get Text    ${TS_ScheduledShipdateColumnAsc}  # Adjust the XPath accordingly
  Should Be Equal As Strings    ${actual_value}    ${EMPTY}
  Click Element    ${TS_IncotermsColumn}
  Sleep    3s
  ${actual_ColText}   Get Text    ${TS_IncotermsColumnAscLocation}
  ${expected_Text}    Set Variable  ${TS_IncotermsColumnAsc}
  #${actual_breadcrumb}    Set Variable    ${actual_breadcrumb.replace('\n', '').replace('\r', '').replace('\t', '').strip()}
  ${normalized_actual}    Evaluate    $expected_Text
  Should Be Equal As Strings    ${normalized_actual}    ${expected_Text}
  Click Element    ${TS_PaymentTermsColumn}
  Sleep    2s
  Page Should Contain    ${TS_PaymentTermsColumnAsc}
  Click Element    ${TS_EndUserColumn}
  Sleep    2s
  Page Should Contain    ${TS_EndUserColumnAsc}

Verify the trucksales details page contents
  Click Element    ${TS_SearchTrucksButton}
  Click Element    ${TS_OrderColumn}
  Sleep    2s
  Click Link    ${TS_OrderColumnAsc}
  Page Should Contain    ${TSD_Heading}
  Page Should Contain    ${TSD_TruckOrderSummaryHeading}
  Page Should Contain    ${TSD_OrderLabel}
  Page Should Contain    ${TSD_PurchaseOrderLabel}
  Page Should Contain    ${TSD_PurchaseOrderDateLabel}
  Page Should Contain    ${TSD_OrderReasonLabel}
  Page Should Contain    ${TSD_FactoryShipDateLabel}
  Page Should Contain    ${TSD_BillToAddressLabel}
  Page Should Contain    ${TSD_ShiptoAddressLabel}
  Page Should Contain    ${TSD_MessageLabel}
  Page Should Contain    ${TSD_TruckmodelLabel}
  Page Should Contain    ${TSD_ShipmentTypeLabel}
  Page Should Contain    ${TSD_IncotermsLabel}
  Page Should Contain    ${TSD_PaymentTermsLabel}
  Page Should Contain    ${TSD_OrderStatusLabel}
  Page Should Contain    ${TSD_LineItemHeading}
  Page Should Contain    ${TSD_LineItemDeliveryHeading}
  Page Should Contain    ${TSD_LineItemOrderHeading}
  Page Should Contain    ${TSD_ItemColumn}
  Page Should Contain    ${TSD_TruckOptionColumn}
  Page Should Contain    ${TSD_QTYColumn}
  Page Should Contain    ${TSD_DateColumn}
  Page Should Contain    ${TSD_DocNoColumn}
  Page Should Contain    ${TSD_TotalNetLabel}
  Page Should Contain Element    ${TSD_BackButton}
  Page Should Contain Element    ${TS_PrintButton}

