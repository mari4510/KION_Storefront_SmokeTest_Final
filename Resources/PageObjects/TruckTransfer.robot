*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#Search
${TT_TruckTransferPageHeading} =  Truck Search
${TT_SerialNumberFieldLabel} =  Serial Number:
${TT_SerialNumberField} =  //input[@id='EquipmentSearchForm_SerialNumber']
${TT_DescriptionField} =  //input[@id='EquipmentSearchForm_Description']
${TT_SunbeltSerial} =  SUNBELT014
${TT_SearchTrucksButton} =  //input[@id='searchTrucks']
${TT_ClearSearchButton} =  //input[@id='clearTruckSearch']
${TT_FindSerialNumberButton} =  //input[@name='FindSerialNo']

#Search Results
${TT_ItemColumn} =  Item
${TT_SerialNumberColumn} =  //th[@data-sort='serialno']
${TT_SerialNumberColumnAsc} =  80808082
${TT_TruckmodelColumn} =  //th[@data-sort='equidescr']
${TT_TruckmodelColumnAsc} =  E20 48V 346 Series Finished Truck
${TT_InstallTypeColumn} =  //th[@data-sort='equitype']
${TT_InstallTypeColumnAsc} =  TRKLSE
${TT_InstallDateColumn} =  //th[@data-sort='warrantystart']
${TT_InstallDateColumnDsc} =  	01/03/24
${TT_WarrantyEndDateColumn} =  //th[@data-sort='warrantyend']
${TT_WarrantyEndDateColumnDsc} =  07/04/27
${TT_EXTWarrantyEndDateColumn} =  //th[@data-sort='extwarrantyend']
${TT_EXTWarrantyEndDateColumnDsc} =  07/04/32
${TT_CustomerNameColumn} =  //th[@data-sort='customername']
${TT_CustomerNameColumnAsc} =  ELEVEX, INC.
${TT_TruckSerialLink} =  //tbody//tr//a[1]

#Details
${TTD_HistoryButton} =  //a[normalize-space()='History']
${TTD_Heading} =  Equipment Detail
${TTD_ModelDescriptionLabel} =  Model / Description:
${TTD_EquipmentDetailsHeader} =  Equipment Details
${TTD_SerialNoLabel} =  Serial No:
${TTD_EquipmentTypeLabel} =  Equipment Type:
${TTD_SalesOrderLabel} =  Sales Order:
${TTD_DateofShipmentLabel} =  Date of Shipment:
${TTD_BillOfLadingLabel} =  Bill of Lading:
${TTD_EngineerManufacturerLabel} =  Engine Manufacturer:
${TTD_EngineModelLabel} =  Engine Model:
${TTD_WarrantyStartLabel} =  Warranty Start:
${TTD_ExtendedWarrntyStartLabel} =  Extended Warranty Start
${TTD_ExtendedWarrntyEndLabel} =  Extended Warranty End
${TTD_InstallationReportLabel} =  Installation Report:
${TTD_ShipmentTermsLabel} =  Shipment Terms:
${TTD_EngineSerialNumberLabel} =  Engine Serial No:
${TTD_WarrantyEndLabel} =  Warranty End
${TTD_CustomerInformatinHeader} =  Customer Information
${TTD_UserNameLabel} =  User Name:
${TTD_AddressLabel} =  //Span[.='Address:']
${TTD_DealernameLabel} =  Dealer Name:
${TTD_NewSearchButton} =  //a[normalize-space()='New Search']
${TTD_BackButton} =  //a[normalize-space()='Back']
${TTD_ServicingDealerHeader} =  Servicing Dealer
${ExpectedAddressLabelCount} =  2
${TTD_TransferButton} =  //a[normalize-space()='Transfer']
#TransferDetails
${TTTD_Heading} =  Transfer Truck to
${TTTD_SelectBranchDrpdown} =  //select[@name='customerno_to']
${TTTD_SalestoBranchCheckBox} =  //input[@id='retailSale']
${TTTD_SalestoBranchCheckBoxMessage} =  Transfer Retail Sale to Branch Account
${TTTD_InstallationPartnertoBranchCheckBox} =  //input[@id='installationPartner']
${TTTD_InstallationPartnertoBranchCheckBoxMessage} =  Transfer Installation Partner to Branch Account
${TTTD_ConfirmTransferButton} =  //button[@name='confirmtransfer']
${TTTD_CancelTransferButton} =  //a[@class='btn btn-primary']

#LazyLoad
${TT_serialno_10} =  //td[normalize-space()='10']
${TT_serialno_20} =  //td[normalize-space()='20']
${TT_serialno_21} =  //td[normalize-space()='21']
*** Keywords ***
Verify the truck transfer truck search page details
    Page Should Contain    ${TT_TruckTransferPageHeading}
    Page Should Contain    ${TT_SerialNumberFieldLabel}
    Page Should Contain Element    ${TT_SerialNumberField}
    Page Should Contain Element    ${TT_SearchTrucksButton}
    Page Should Contain Element    ${TT_ClearSearchButton}
    

Search any valid truck and verify the equipment details page
    Input Text    ${TT_SerialNumberField}    ${TT_SunbeltSerial}
    Click Element    ${TT_SearchTrucksButton}
    Page Should Contain    ${TT_ItemColumn}
    Page Should Contain Element    ${TT_SerialNumberColumn}
    Page Should Contain Element    ${TT_TruckmodelColumn}
    Page Should Contain Element    ${TT_InstallTypeColumn}
    Page Should Contain Element    ${TT_InstallDateColumn}
    Page Should Contain Element    ${TT_EXTWarrantyEndDateColumn}
    Page Should Contain Element    ${TT_EXTWarrantyEndDateColumn}
    Page Should Contain Element    ${TT_CustomerNameColumn}
    Click Element    ${TT_TruckSerialLink}
    Page Should Contain    ${TTD_Heading}
    Page Should Contain    ${TTD_ModelDescriptionLabel}
    Page Should Contain    ${TTD_EquipmentDetailsHeader}
    Page Should Contain    ${TTD_SerialNoLabel}
    Page Should Contain    ${TTD_EquipmentTypeLabel}
    Page Should Contain    ${TTD_SalesOrderLabel}
    Page Should Contain    ${TTD_DateofShipmentLabel}
    Page Should Contain    ${TTD_BillOfLadingLabel}
    Page Should Contain    ${TTD_EngineerManufacturerLabel}
    Page Should Contain    ${TTD_EngineModelLabel}
    Page Should Contain    ${TTD_WarrantyStartLabel}
    Page Should Contain    ${TTD_ExtendedWarrntyStartLabel}
    Page Should Contain    ${TTD_InstallationReportLabel}
    Page Should Contain    ${TTD_ShipmentTermsLabel}
    Page Should Contain    ${TTD_EngineSerialNumberLabel}
    Page Should Contain    ${TTD_WarrantyEndLabel}
    Page Should Contain    ${TTD_ExtendedWarrntyEndLabel}
    Page Should Contain    ${TTD_CustomerInformatinHeader}
    Page Should Contain    ${TTD_UserNameLabel}
    ${ExpectedCount} =  set variable  ${ExpectedAddressLabelCount}
    ${actual01} =  Get Element Count    ${TTD_AddressLabel}
    Should Be Equal As Numbers    ${actual01}    ${ExpectedAddressLabelCount}
    Page Should Contain    ${TTD_ServicingDealerHeader}
    Page Should Contain    ${TTD_DealernameLabel}
    Page Should Contain Element    ${TTD_TransferButton}
    Page Should Contain Element    ${TTD_NewSearchButton}
    Page Should Contain Element    ${TTD_BackButton}
    Page Should not Contain Element    ${TTD_HistoryButton}
    Click Element    ${TTD_TransferButton}
    Page Should Contain    ${TTTD_Heading}
    Page Should Contain Element  ${TTTD_SelectBranchDrpdown}
    Page Should Contain Element    ${TTTD_InstallationPartnertoBranchCheckBox}
    Page Should Contain    ${TTTD_InstallationPartnertoBranchCheckBoxMessage}
    Page Should Contain Element    ${TTTD_SalestoBranchCheckBox}
    Page Should Contain    ${TTTD_SalestoBranchCheckBoxMessage}
    Page Should Contain Element    ${TTTD_ConfirmTransferButton}
    Page Should Contain Element    ${TTTD_CancelTransferButton}


Verify the the sorting and lazy load in the truck transfer search page
   Click Element    ${TT_SearchTrucksButton}
  Click Element    ${TT_SerialNumberColumn}
  Sleep    3s
  Page Should Contain    ${TT_SerialNumberColumnAsc}
  Click Element    ${TT_TruckmodelColumn}
  Sleep    2s
  Page Should Contain    ${TT_TruckmodelColumnAsc}
  Click Element    ${TT_InstallTypeColumn}
  Sleep    2s
  Page Should Contain    ${TT_InstallTypeColumnAsc}
  Click Element    ${TT_InstallDateColumn}
  Sleep    2s
  Click Element    ${TT_InstallDateColumn}
  Sleep    2s
  Page Should Contain    ${TT_InstallDateColumnDsc}
  Click Element    ${TT_WarrantyEndDateColumn}
  Sleep    2s
  Click Element    ${TT_WarrantyEndDateColumn}
  Sleep    2s
  Page Should Contain    ${TT_WarrantyEndDateColumnDsc}
  Click Element    ${TT_EXTWarrantyEndDateColumn}
  Sleep    2s
  Click Element    ${TT_EXTWarrantyEndDateColumn}
  Sleep    2s
  Page Should Contain    ${TT_EXTWarrantyEndDateColumnDsc}
  Click Element    ${TT_CustomerNameColumn}
  Sleep    3s
  Page Should Contain    ${TT_CustomerNameColumnAsc}
  Click Element    ${TT_SearchTrucksButton}
  Sleep    2s
  Execute JavaScript    window.scrollBy(0,400)
  sleep    5s
  page should contain element    ${TT_serialno_10}
  Execute Javascript   document.querySelector('.table-responsive.freeze-header.min-records').scrollTop=100;
  sleep    5s
  Execute Javascript   document.querySelector('.table-responsive.freeze-header.min-records').scrollTop=800;
  Sleep    3s
  page should contain element    ${TT_serialno_20}
  page should not contain element    ${TT_serialno_21}
