*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#Search
${FT_SerialNumberField} =  //input[@id='EquipmentSearchForm_SerialNumber']
${FT_DescriptionField} =  //input[@id='EquipmentSearchForm_Description']
${FT_DescriptionValue} =  MT12 1131 Finished Truck
${FT_SerialNumber} =  H2Y388M00831
${FT_SunbeltSerial} =  SUNBELT014
${FT_SearchTrucksButton} =  //input[@id='searchTrucks']
${FT_ClearSearchButton} =  //input[@id='clearTruckSearch']
${FT_FindSerialNumberButton} =  //input[@name='FindSerialNo']
#SearchResults
${FT_ItemColumn} =  Item
${FT_SerialNumberColumn} =  //th[@data-sort='serialno']
${FT_SerialNumberColumnAsc} =  726180531
${FT_TruckmodelColumn} =  //th[@data-sort='equidescr']
${FT_TruckmodelColumnAsc} =  20S-02 Finished Truck
${FT_InstallTypeColumn} =  //th[@data-sort='equitype']
${FT_InstallTypeColumnAsc} =  TRKDMO
${FT_InstallDateColumn} =  //th[@data-sort='warrantystart']
${FT_InstallDateColumnDsc} =  	01/03/24
${FT_WarrantyEndDateColumn} =  //th[@data-sort='warrantyend']
${FT_WarrantyEndDateColumnDsc} =  09/27/27
${FT_EXTWarrantyEndDateColumn} =  //th[@data-sort='extwarrantyend']
${FT_EXTWarrantyEndDateColumnDsc} =  06/02/28
${FT_CustomerNameColumn} =  //th[@data-sort='customername']
${FT_CustomerNameColumnDsc} =  9305-4484 QUEBEC INC
${FT_TruckSerialLink} =  //tbody//tr//a[1]
#LazyLoad
${FT_serialno_10} =  //td[normalize-space()='10']
${FT_serialno_20} =  //td[normalize-space()='20']
${FT_serialno_21} =  //td[normalize-space()='21']
#Details Page
${FTD_HistoryButton} =  //a[normalize-space()='History']
${FTD_Heading} =  Equipment Detail
${FTD_ModelDescriptionLabel} =  Model / Description:
${FTD_EquipmentDetailsHeader} =  Equipment Details
${FTD_SerialNoLabel} =  Serial No:
${FTD_EquipmentTypeLabel} =  Equipment Type:
${FTD_SalesOrderLabel} =  Sales Order:
${FTD_DateofShipmentLabel} =  Date of Shipment:
${FTD_BillOfLadingLabel} =  Bill of Lading:
${FTD_EngineerManufacturerLabel} =  Engine Manufacturer:
${FTD_EngineModelLabel} =  Engine Model:
${FTD_WarrantyStartLabel} =  Warranty Start:
${FTD_InstallationReportLabel} =  Installation Report:
${FTD_ShipmentTermsLabel} =  Shipment Terms:
${FTD_EngineSerialNumberLabel} =  Engine Serial No:
${FTD_WarrantyEndLabel} =  Warranty End
${FTD_CustomerInformatinHeader} =  Customer Information
${FTD_UserNameLabel} =  User Name:
${FTD_AddressLabel} =  //Span[.='Address:']
${FTD_DealernameLabel} =  Dealer Name:
${FTD_NewSearchButton} =  //a[normalize-space()='New Search']
${FTD_BackButton} =  //a[normalize-space()='Back']
${FTD_ServicingDealerHeader} =  Servicing Dealer
${ExpectedAddressLabelCount} =  2
#History Popup
${FTD_SerialforHistory} =  H2X388D00620
${FTD_SerialforNoHistory} =  P21120M00943
${FTDC_ClaimHistoryPageHeading} =  Claim History
${FTDC_PrintButton} =  id:printClaimResults
${FTDC_BackButton} =  //a[.='Back']
${FTDC_SubHeader} =  Claim History for Equipment Serial No. H2X388D00620
${FTDC_ItemColumn} =  Item
${FTDC_ClaimNoHeader} =  //th[.='Claim No.']
${FTDC_DatereceivedHeader} =  //th[@data-sort='audat']
${FTDC_StatusHeader} =  //th[@data-sort='faksk']
${FTDC_WorkOrderNumberHeader} =  //th[@data-sort='bstnk']
${FTDC_RepairDateHeader} =  //th[@data-sort='prsdt']
${FTDC_ClaimTotalHeader} =  //th[@data-sort='netwr']
${FTDC_HistoryErrorMessage} =  No equipment history found in backend system.

*** Keywords ***
Serialnumber field search
  Input Text    ${FT_SerialNumberField}    ${FT_SerialNumber}
  Click Element    ${FT_SearchTrucksButton}
  Page Should Contain    ${FT_SerialNumber}
  Page Should Contain Element    ${FT_SerialNumberColumn}
  Page Should Contain Element    ${FT_TruckmodelColumn}
  Page Should Contain Element    ${FT_InstallTypeColumn}
  Page Should Contain Element    ${FT_InstallDateColumn}
  Page Should Contain Element    ${FT_WarrantyEndDateColumn}
  Page Should Contain Element    ${FT_EXTWarrantyEndDateColumn}
  Page Should Contain Element    ${FT_CustomerNameColumn}

Description field search
  Input Text    ${FT_DescriptionField}    ${FT_DescriptionValue}
  Click Element    ${FT_SearchTrucksButton}
  Page Should Contain  ${FT_Descriptionvalue}
  Page Should Contain Element    ${FT_SerialNumberColumn}
  Page Should Contain Element    ${FT_TruckmodelColumn}
  Page Should Contain Element    ${FT_InstallTypeColumn}
  Page Should Contain Element    ${FT_InstallDateColumn}
  Page Should Contain Element    ${FT_WarrantyEndDateColumn}
  Page Should Contain Element    ${FT_EXTWarrantyEndDateColumn}
  Page Should Contain Element    ${FT_CustomerNameColumn}

Verify the history button for current dealer truck
  Input Text    ${FT_SerialNumberField}    ${FT_SerialNumber}
  Click Element    ${FT_FindSerialNumberButton}
  Page Should Contain Element    ${FTD_HistoryButton}

Verify the history button for other dealer truck
  Input Text    ${FT_SerialNumberField}    ${FT_SunbeltSerial}
  Click Element    ${FT_FindSerialNumberButton}
  Page Should not Contain Element    ${FTD_HistoryButton}

Verify the sorting and searching
  Click Element    ${FT_SearchTrucksButton}
  Click Element    ${FT_SerialNumberColumn}
  Sleep    3s
  Page Should Contain    ${FT_SerialNumberColumnAsc}
  Click Element    ${FT_TruckmodelColumn}
  Sleep    2s
  Page Should Contain    ${FT_TruckmodelColumnAsc}
  Click Element    ${FT_InstallTypeColumn}
  Sleep    2s
  Page Should Contain    ${FT_InstallTypeColumnAsc}
  Click Element    ${FT_InstallDateColumn}
  Sleep    2s
  Click Element    ${FT_InstallDateColumn}
  Sleep    2s
  Page Should Contain    ${FT_InstallDateColumnDsc}
  Click Element    ${FT_WarrantyEndDateColumn}
  Sleep    2s
  Click Element    ${FT_WarrantyEndDateColumn}
  Sleep    2s
  Page Should Contain    ${FT_WarrantyEndDateColumnDsc}
  Click Element    ${FT_EXTWarrantyEndDateColumn}
  Sleep    2s
  Click Element    ${FT_EXTWarrantyEndDateColumn}
  Sleep    2s
  Page Should Contain    ${FT_EXTWarrantyEndDateColumnDsc}
  Click Element    ${FT_CustomerNameColumn}
  Sleep    3s
  Page Should Contain    ${FT_CustomerNameColumnDsc}
  Click Element    ${FT_SearchTrucksButton}
  Sleep    2s
  Execute JavaScript    window.scrollBy(0,400)
  sleep    5s
  page should contain element    ${FT_serialno_10}
  Execute Javascript   document.querySelector('.table-responsive.freeze-header.min-records').scrollTop=100;
  sleep    5s
  Execute Javascript   document.querySelector('.table-responsive.freeze-header.min-records').scrollTop=800;
  Sleep    3s
  page should contain element    ${FT_serialno_20}
  page should not contain element    ${FT_serialno_21}

go to Equipment details page and verify contents
  Input Text    ${FT_SerialNumberField}    ${FT_SerialNumber}
  Click Element    ${FT_SearchTrucksButton}
  Wait Until Element Is Visible    ${FT_TruckSerialLink}
  Click Element    ${FT_TruckSerialLink}
  Wait Until Page Contains  ${FTD_Heading}
  Page Should Contain    ${FTD_Heading}
  Page Should Contain    ${FTD_ModelDescriptionLabel}
  Page Should Contain    ${FTD_EquipmentDetailsHeader}
  Page Should Contain    ${FTD_SerialNoLabel}
  Page Should Contain    ${FTD_EquipmentTypeLabel}
  Page Should Contain    ${FTD_SalesOrderLabel}
  Page Should Contain    ${FTD_DateofShipmentLabel}
  Page Should Contain    ${FTD_BillOfLadingLabel}
  Page Should Contain    ${FTD_EngineerManufacturerLabel}
  Page Should Contain    ${FTD_EngineModelLabel}
  Page Should Contain    ${FTD_WarrantyStartLabel}
  Page Should Contain    ${FTD_EngineSerialNumberLabel}
  Page Should Contain    ${FTD_WarrantyEndLabel}
  Page Should Contain    ${FTD_CustomerInformatinHeader}
  Page Should Contain    ${FTD_UserNameLabel}
  Page Should Contain    ${FTD_DealernameLabel}
  Page Should Contain    ${FTD_ServicingDealerHeader}
  ${expected_count} =    Set Variable    2
  ${actual_count} =  Get Element Count  ${FTD_AddressLabel}
  Should Be Equal As Numbers    ${expected_count}    ${actual_count}
  Page Should Contain Element    ${FTD_HistoryButton}
  Page Should Contain Element    ${FTD_NewSearchButton}
  Page Should Contain Element    ${FTD_BackButton}

go to Equipment details verify the history page details
  Input Text    ${FT_SerialNumberField}  ${FTD_SerialforHistory}
  Wait Until Element Is Visible    ${FT_FindSerialNumberButton}
  Click Element    ${FT_FindSerialNumberButton}
  Wait Until Element Is Visible    ${FTD_HistoryButton}
  Click Element    ${FTD_HistoryButton}
  Wait Until Page Contains    ${FTDC_ClaimHistoryPageHeading}
  Page Should Contain  ${FTDC_ClaimHistoryPageHeading}
  ${expectedprintcount}  set variable  2
  Wait Until Element Is Visible    ${FTDC_PrintButton}
  ${ActualPrintcount} =  Get Element Count    ${FTDC_PrintButton}
  Should Be Equal As Numbers    ${expectedprintcount}    ${ActualPrintcount}
  ${expectedBackcount}  set variable  2
  Wait Until Element Is Visible    ${FTDC_BackButton}
  ${ActualBackcount} =  Get Element Count    ${FTDC_BackButton}
  Should Be Equal As Numbers    ${expectedprintcount}    ${ActualPrintcount}  
  Wait Until Page Contains    ${FT_ItemColumn}
  Page Should Contain  ${FT_ItemColumn}
  Page Should Contain    ${FTDC_SubHeader}
  Page Should Contain Element    ${FTDC_ClaimTotalHeader}
  Page Should Contain Element    ${FTDC_DatereceivedHeader}
  Page Should Contain Element    ${FTDC_StatusHeader}
  Page Should Contain Element    ${FTDC_WorkOrderNumberHeader}
  Page Should Contain Element    ${FTDC_RepairDateHeader}
  Page Should Contain Element    ${FTDC_ClaimTotalHeader}
  
go to equipment details page and verify the history button for no history available truck
   Wait Until Element Is Visible    ${FT_SerialNumberField}
   Input Text    ${FT_SerialNumberField}    ${FTD_SerialforNoHistory}
   Wait Until Element Is Visible    ${FT_FindSerialNumberButton}
   Click Element    ${FT_FindSerialNumberButton}
   Wait Until Element Is Visible    ${FTD_HistoryButton}
   Click Element    ${FTD_HistoryButton}
   Wait Until Page Contains    ${FTDC_HistoryErrorMessage}
   Page Should Contain  ${FTDC_HistoryErrorMessage}

