*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#Truck Search navigation
${AdminTruckSearchLink} =  //li[@class='dropdown']//a[normalize-space()='Truck Search']
${AdminTruckSearchPageHeading} =  Truck Search
#Dealernumber Search
${SR_DealerNumberField} =  //input[@id='EquipmentSearchAdminForm_DealerNo']
${SR_DealerNumberValue} =  53464
${SR_DealernumberSearchResult} =  //tbody[@id='TrucksResutsBody']
${SR_SearchTrucksButton} =  //input[@id='searchTrucks']
${SR_ClearSearchButton} =  //input[@id='clearTruckSearch']
${SR_FindSerialNumberButton} =  //input[@name='FindSerialNo']
#Search
${ATS_SerialNumberField} =  //input[@id='EquipmentSearchForm_SerialNumber']
${ATS_DescriptionField} =  //input[@id='EquipmentSearchForm_Description']
${ATS_DescriptionValue} =  MT12 1131 Finished Truck
${ATS_SerialNumber} =  H2Y388M00831
${ATS_SunbeltSerial} =  SUNBELT014

#SearchResults Sorting
${ATS_ItemColumn} =  Item
${ATS_SerialNumberColumn} =  //th[@data-sort='serialno']
${ATS_SerialNumberColumnAsc} =  726180531
${ATS_TruckmodelColumn} =  //th[@data-sort='equidescr']
${ATS_TruckmodelColumnAsc} =  20S-02 Finished Truck
${ATS_InstallTypeColumn} =  //th[@data-sort='equitype']
${ATS_InstallTypeColumnAsc} =  TRKDMO
${ATS_InstallDateColumn} =  //th[@data-sort='warrantystart']
${ATS_InstallDateColumnDsc} =  	01/03/24
${ATS_WarrantyEndDateColumn} =  //th[@data-sort='warrantyend']
${ATS_WarrantyEndDateColumnDsc} =  09/27/27
${ATS_EXTWarrantyEndDateColumn} =  //th[@data-sort='extwarrantyend']
${ATS_EXTWarrantyEndDateColumnDsc} =  06/02/28
${ATS_CustomerNameColumn} =  //th[@data-sort='customername']
${ATS_CustomerNameColumnDsc} =  9305-4484 QUEBEC INC
${ATS_TruckSerialLink} =  //tbody//tr//a[1]

#LazyLoad
${FT_serialno_10} =  //td[normalize-space()='10']
${FT_serialno_20} =  //td[normalize-space()='20']
${FT_serialno_21} =  //td[normalize-space()='21']

#Details Page
${ATD_HistoryButton} =  //a[normalize-space()='History']
${ATD_Heading} =  Equipment Detail
${ATD_ModelDescriptionLabel} =  Model / Description:
${ATD_EquipmentDetailsHeader} =  Equipment Details
${ATD_SerialNoLabel} =  Serial No:
${ATD_EquipmentTypeLabel} =  Equipment Type:
${ATD_SalesOrderLabel} =  Sales Order:
${ATD_DateofShipmentLabel} =  Date of Shipment:
${ATD_BillOfLadingLabel} =  Bill of Lading:
${ATD_EngineerManufacturerLabel} =  Engine Manufacturer:
${ATD_EngineModelLabel} =  Engine Model:
${ATD_WarrantyStartLabel} =  Warranty Start:
${ATD_InstallationReportLabel} =  Installation Report:
${ATD_ShipmentTermsLabel} =  Shipment Terms:
${ATD_EngineSerialNumberLabel} =  Engine Serial No:
${ATD_WarrantyEndLabel} =  Warranty End
${ATD_CustomerInformatinHeader} =  Customer Information
${ATD_UserNameLabel} =  User Name:
${ATD_AddressLabel} =  //Span[.='Address:']
${ATD_EquipmentTextsHeader} =  Equipment texts
${ATD_LongTextLabel} =  Long text
${ATD_InternalNotesLabel} =  Internal Notes
${ATD_NewSearchButton} =  //a[normalize-space()='New Search']
${ATD_BackButton} =  //a[normalize-space()='Back']
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
Go to admin truck search
  Click Element    ${AdminTruckSearchLink}
  Wait Until Page Contains    ${AdminTruckSearchPageHeading}
  Page Should Contain    ${AdminTruckSearchPageHeading}

Dealernumber search
  Input Text    ${SR_DealerNumberField}    ${SR_DealerNumberValue}
  Click Element    ${SR_SearchTrucksButton}
  #Sleep    2s
  Wait Until Page Contains Element    ${SR_DealernumberSearchResult}  10s
  Page Should Contain Element    ${SR_DealernumberSearchResult}

#Serialnumber field search
#  Input Text    ${FT_SerialNumberField}    ${FT_SerialNumber}
#  Click Element    ${FT_SearchTrucksButton}
#  Page Should Contain    ${FT_SerialNumber}
#  Page Should Contain Element    ${FT_SerialNumberColumn}
#  Page Should Contain Element    ${FT_TruckmodelColumn}
#  Page Should Contain Element    ${FT_InstallTypeColumn}
#  Page Should Contain Element    ${FT_InstallDateColumn}
#  Page Should Contain Element    ${FT_WarrantyEndDateColumn}
#  Page Should Contain Element    ${FT_EXTWarrantyEndDateColumn}
#  Page Should Contain Element    ${FT_CustomerNameColumn}
#
#Description field search
#  Input Text    ${FT_DescriptionField}    ${FT_DescriptionValue}
#  Click Element    ${FT_SearchTrucksButton}
#  Page Should Contain  ${FT_Descriptionvalue}
#  Page Should Contain Element    ${FT_SerialNumberColumn}
#  Page Should Contain Element    ${FT_TruckmodelColumn}
#  Page Should Contain Element    ${FT_InstallTypeColumn}
#  Page Should Contain Element    ${FT_InstallDateColumn}
#  Page Should Contain Element    ${FT_WarrantyEndDateColumn}
#  Page Should Contain Element    ${FT_EXTWarrantyEndDateColumn}
#  Page Should Contain Element    ${FT_CustomerNameColumn}
#
#Verify the history button for current dealer truck
#  Input Text    ${FT_SerialNumberField}    ${FT_SerialNumber}
#  Click Element    ${FT_FindSerialNumberButton}
#  Page Should Contain Element    ${FTD_HistoryButton}
#
#Verify the history button for other dealer truck
#  Input Text    ${FT_SerialNumberField}    ${FT_SunbeltSerial}
#  Click Element    ${FT_FindSerialNumberButton}
#  Page Should not Contain Element    ${FTD_HistoryButton}

Verify the sorting and searching
  #Click Element    ${SR_SearchTrucksButton}
  Click Element    ${ATS_SerialNumberColumn}
  Sleep    3s
  Page Should Contain    ${ATS_SerialNumberColumnAsc}
  Click Element    ${ATS_TruckmodelColumn}
  Sleep    2s
  Page Should Contain    ${ATS_TruckmodelColumnAsc}
  Click Element    ${ATS_InstallTypeColumn}
  Sleep    2s
  Page Should Contain    ${ATS_InstallTypeColumnAsc}
  Click Element    ${ATS_InstallDateColumn}
  Sleep    2s
  Click Element    ${ATS_InstallDateColumn}
  Sleep    2s
  Page Should Contain    ${ATS_InstallDateColumnDsc}
  Click Element    ${ATS_WarrantyEndDateColumn}
  Sleep    2s
  Click Element    ${ATS_WarrantyEndDateColumn}
  Sleep    2s
  Page Should Contain    ${ATS_WarrantyEndDateColumnDsc}
  Click Element    ${ATS_EXTWarrantyEndDateColumn}
  Sleep    2s
  Click Element    ${ATS_EXTWarrantyEndDateColumn}
  Sleep    2s
  Page Should Contain    ${ATS_EXTWarrantyEndDateColumnDsc}
  Click Element    ${ATS_CustomerNameColumn}
  Sleep    3s
  Page Should Contain    ${ATS_CustomerNameColumnDsc}
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
#  Input Text    ${ATS_SerialNumberField}    ${ATS_SerialNumber}
#  Click Element    ${SR_SearchTrucksButton}
  Execute Javascript  window.scrollTo(0,0)
  Sleep    2s
  Click Element    ${ATS_SerialNumberColumn}
  Sleep    2s
  #Wait Until Element Is Visible    ${ATS_TruckSerialLink}
  Click Element    ${ATS_TruckSerialLink}
  Wait Until Page Contains  ${ATD_Heading}
  Page Should Contain    ${ATD_Heading}
  Page Should Contain    ${ATD_ModelDescriptionLabel}
  Page Should Contain    ${ATD_EquipmentDetailsHeader}
  Page Should Contain    ${ATD_SerialNoLabel}
  Page Should Contain    ${ATD_EquipmentTypeLabel}
  Page Should Contain    ${ATD_SalesOrderLabel}
  Page Should Contain    ${ATD_DateofShipmentLabel}
  Page Should Contain    ${ATD_BillOfLadingLabel}
  Page Should Contain    ${ATD_EngineerManufacturerLabel}
  Page Should Contain    ${ATD_EngineModelLabel}
  Page Should Contain    ${ATD_WarrantyStartLabel}
  Page Should Contain    ${ATD_EngineSerialNumberLabel}
  Page Should Contain    ${ATD_WarrantyEndLabel}
  Page Should Contain    ${ATD_CustomerInformatinHeader}
  Page Should Contain    ${ATD_UserNameLabel}
  Page Should Contain Element   ${ATD_AddressLabel}
  Page Should Contain     ${ATD_EquipmentTextsHeader}
  Page Should Contain    ${ATD_LongTextLabel}
  Page Should Contain    ${ATD_InternalNotesLabel}
  Page Should Contain Element    ${ATD_HistoryButton}
  Page Should Contain Element    ${ATD_NewSearchButton}
  Page Should Contain Element    ${ATD_BackButton}

#go to Equipment details verify the history page details
#  Input Text    ${FT_SerialNumberField}  ${FTD_SerialforHistory}
#  Wait Until Element Is Visible    ${FT_FindSerialNumberButton}
#  Click Element    ${FT_FindSerialNumberButton}
#  Wait Until Element Is Visible    ${FTD_HistoryButton}
#  Click Element    ${FTD_HistoryButton}
#  Wait Until Page Contains    ${FTDC_ClaimHistoryPageHeading}
#  Page Should Contain  ${FTDC_ClaimHistoryPageHeading}
#  ${expectedprintcount}  set variable  2
#  Wait Until Element Is Visible    ${FTDC_PrintButton}
#  ${ActualPrintcount} =  Get Element Count    ${FTDC_PrintButton}
#  Should Be Equal As Numbers    ${expectedprintcount}    ${ActualPrintcount}
#  ${expectedBackcount}  set variable  2
#  Wait Until Element Is Visible    ${FTDC_BackButton}
#  ${ActualBackcount} =  Get Element Count    ${FTDC_BackButton}
#  Should Be Equal As Numbers    ${expectedprintcount}    ${ActualPrintcount}
#  Wait Until Page Contains    ${FT_ItemColumn}
#  Page Should Contain  ${FT_ItemColumn}
#  Page Should Contain    ${FTDC_SubHeader}
#  Page Should Contain Element    ${FTDC_ClaimTotalHeader}
#  Page Should Contain Element    ${FTDC_DatereceivedHeader}
#  Page Should Contain Element    ${FTDC_StatusHeader}
#  Page Should Contain Element    ${FTDC_WorkOrderNumberHeader}
#  Page Should Contain Element    ${FTDC_RepairDateHeader}
#  Page Should Contain Element    ${FTDC_ClaimTotalHeader}
#
#go to equipment details page and verify the history button for no history available truck
#   Wait Until Element Is Visible    ${FT_SerialNumberField}
#   Input Text    ${FT_SerialNumberField}    ${FTD_SerialforNoHistory}
#   Wait Until Element Is Visible    ${FT_FindSerialNumberButton}
#   Click Element    ${FT_FindSerialNumberButton}
#   Wait Until Element Is Visible    ${FTD_HistoryButton}
#   Click Element    ${FTD_HistoryButton}
#   Wait Until Page Contains    ${FTDC_HistoryErrorMessage}
#   Page Should Contain  ${FTDC_HistoryErrorMessage}

