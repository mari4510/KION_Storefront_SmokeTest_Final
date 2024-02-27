*** Settings ***
Library    SeleniumLibrary
Library    XML
*** Variables ***
#Search Section
${WM_ClaimNumberField} =  //input[@class='form-control']
${WM_ClaimNumberFieldValue} =  7425441
${WM_ClaimNumberSearchResultFieldRow} =  //tbody[@id='warranty-results-body']//tr[1]//td[3]
${WM_ClaimNumberSearchResult} =   //tbody[@id='warranty-results-body']//tr[1]//td[3]
${WM_WorkOrderField} =  //div[@class='col-xs-12']//input[@name='Warranty_WorkOrder']
${WM_WorkOrderFieldValue} =  test
${WM_SubmitDateFromField} =  //input[@id='submittedDateStart']
${WM_SubmitDateFromFieldValue} =  11/01/23
${WM_SubmitDateEndField}=  //input[@id='submittedDateEnd']
${WM_SubmitDateEndFieldValue} =  11/17/23
${WM_PartNumberField} =  //input[@name='Warranty_PartNumber']
${WM_PartNumberFieldValue} =  LA5006107-124
${WM_PartSearchClaimvalue} =  7425459
${WM_SerialNumberField} =  //div[@class='col-xs-12']//input[@name='Warranty_SerialNumber']
${WM_SerialNumberFieldValue} =  512048008441
${WM_ApprovalDateFromField} =  //input[@id='approvalDateStart']
${WM_ApprovalDateFromFieldValue} =  11/01/23
${WM_ApprovalDateToField} =  //input[@id='approvalDateEnd']
${WM_ApprovalDateToFieldValue} =  11/17/23
${WM_ClaimStatusDropdown} =  //select[@name='Warranty_ClaimStatus']
${WM_SavedStatusvalue} =  //option[.='Saved Claims']
${WM_SubmittedStatusvalue} =  //option[.='Submitted Claims']
${WM_ProcessedStatusvalue} =  //option[.='Processed Claims']
${WM_ProcessedStatusSearchResult} =  Processed
${WM_ClaimTypeDropdown} =   //label[.='Claim Type']
${WM_TruckClaim} =  //option[.='Truck']
${WM_TruckClaimSearchresult} =  Truck
${WM_PartCaim} =  //option[.='Part']
${WM_FreightClaim} =  //option[.='Freight']
${WM_DealerActionRequiredButton} =  //span[normalize-space()='Dealer Action Required']
${WM_DealerActionRequiredIcon} =  //tr[@id='warranty-result-row-1']//span[@class='glyphicon glyphicon-exclamation-sign']
${WM_NewMessageButton} =  //div[@class='not-icon']//span[@class='linde-icon msg-icon']
${WM_MessageIcon} =  //a[@class='display-messages']//span[@class='linde-icon msg-icon']
${WM_SearchClaimsButton} =  //button[@id='warranty-search-claims']
${WM_ClearSearchButton} =  //input[@id='warranty-clear-search']
${WM_CreateNewwarrantyclaim} =  //a[@class='create-new-claim bo-link']

#Sorting
${WM_ClaimHeader} =  //a[@id='claimnumber_col']
${WM_ClaimHeaderAsc} =  N/A
${WM_submitDateHeader} =  //a[@id='submitteddate_col']
${WM_submitDateHeaderAsc} =  ${EMPTY}
${WM_WorkOrderHeader} =  //a[@id='workorder_col']
${WM_WorkOrderHeaderAsc} =  ${EMPTY}
${WM_SerialHeader} =  //a[@id='serialnumber_col']
${WM_SerialHeaderAsc} =  ${EMPTY}
${WM_ClaimTypeHeader} =  //a[@id='claimtype_col']
${WM_ClaimTypeHeaderAsc} =  Freight
${WM_DueDateHeader} =  //a[@id='duedate_col']
${WM_DueDateHeaderAsc} =  ${EMPTY}
${WM_CustomerHeader} =  //a[@id='customer_col']
${WM_CustomerHeaderAsc} =  ${EMPTY}
${WM_StatusHeader} =  //a[@id='claimstatus_col']
${WM_StatusHeaderAsc} =  Processed
${WM_ClaimAmountHeader} =  //a[@id='claimamount_col']
${WM_ClaimAmountHeaderAsc} =  $ 0.00
${WM_ApprovedAmountHeader} =  //a[@id='approvalamount_col']
${WM_ApprovedAmountHeaderAsc} =  $ 0.00
${WM_ApprovalDateHeader} =  //a[@id='approveddate_col']
${WM_ApprovalDateHeaderAsc} =  ${EMPTY}
${WM_ClaimHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[3]
${WM_SubmitDateHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[4]
${WM_WorkOrderHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[5]
${WM_SerialHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[6]
${WM_ClaimTypeHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[7]
${WM_DueDateHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[8]
${WM_CustomerHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[9]
${WM_StatusHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[10]
${WM_ClaimAmountHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[11]
${WM_ApprovedAmountHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[12]
${WM_ApprovalDateHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[13]

#LazyLoad
${FT_serialno_40} =  //td[normalize-space()='40']
${FT_serialno_80} =  //td[normalize-space()='80']
${FT_serialno_81} =  //td[normalize-space()='81']

#Truck claim
${NWM_SerialNo} =  W41152C06676
${NWM_EquipmentSerialNumberField} =  //input[@id='equipmentserial']
${NWM_SubmitButton} =  //button[@id='type-select-submit']
${NWM_WorkOrderField} =  //input[@name='WorkOrder']
${NWM_WorkorderFieldValue} =  Test WorkOrder
${NWM_PartCausingFailureField} =  //input[@id='PartCausingFailure']
${NWM_PartCausingFailureFieldValue} =  Engine Failure
${NWM_hourMeterField} =  //input[@id='HourMeter']
${NWM_hourMeterFieldValue} =  13
${NWM_FailureDateField} =  //input[@id='FailureDate']
${NWM_FailureDateFieldValue} =  01/23/2024
${NWM_RepairDateField} =  //input[@id='RepairDate']
${NWM_RepairDateFieldValue} =  01/30/2024
${NWM_NotesField} =  //textarea[@name='Notes']
${NWM_NotesFieldValue} =  Test Description
${NWM_ProceedButton} =  //button[@name='proceed']
${NWM_AddLindePartsLink} =  //a[@id='addlindeparts']
${NWM_LindePartField} =  //input[@id='warranty-addlindeitem-sku_1']
${NWM_LindePartValue} =  X25080FJ10
${NWM_AddToClaimButton} =  //button[@id='add-line-item']
${NWM_AddNonLindePartsButton} =  //a[@id='addnonlindeparts']
${NWM_NonLindeQTYField} =  //input[@name='QuantityValue_1']
${NWM_NonLindeQTYFieldValue} =  1
${NWM_NonLindeDescriptionField} =  //input[@name='Description_1']
${NWM_NonLindeDescriptionFieldValue} =  Tools for Installation
${NWM_NonLindeAmountField} =  //input[@name='UnitPriceValue_1']
${NWM_NonLindeAmountValue} =  15
${NWM_AddMiscPartLink} =  //a[@id='addMiscellaneousItems']
${NWM_MiscDescriptionField} =  //input[@name='Description_1']
${NWM_MiscDescriptionFieldValue} =  Labour food and travel expences
${NWM_MiscAmountField} =  //input[@name='UnitPriceValue_1']
${NWM_MiscAmount} =  25
${NWM_EditLabourItemLink} =  //a[@id='addLabourItems']
${NWM_ShopLaourField} =  //input[@name='Shoplabor']
${NWM_ShopLaourFieldValue} =  13
${NWM_FieldlabourField} =  //input[@name='Fieldlabor']
${NWM_FieldlabourFieldValue} =  16
${NWM_TravelLabourField} =  //input[@name='Travellabor']
${NWM_TravelLabourFieldValue} =  50
${NMW_AddLaboutItemAddcalimButton} =  //button[@id='edit-labor-btn']
${NWM_BackToClaimButton} =  //a[@class='btn btn-primary']
${NWM_CalculateButton} =  //button[@id='simulate-warranty']
${NWM_EndSubmit} =  //button[@name='submitClaim']
${NWM_SubmittedStatus} =  Submitted

#Part Claim
${NMW_LineItemField} =  //input[@id='warranty-addlindeitem-sku_1']
${NWM_ClaimTypeDropdown} =  //select[@id='ClaimTypeSelectBox']
${NWM_PartClaim} =   //option[@value='Part']
${NWM_AddLineItemButton} =  //button[@id='add-line-item']
${NWM_PartInstallDateField} =  //input[@id='InstallDate']
${NWM_PartFailureDate} =  //input[@id='FailureDate']

#Frieght
${NWM_FreightClaim} =  //option[.='Freight Claim']
${NWM_FreightNoteField} =  //textarea[@name='Notes']
${NWM_FreightNoteFieldValue} =  Test Freight Notes
${NWM_FreightValueField} =  //input[@name='FreightValue']
${NWM_FreightValueFieldValue} =  100
${NWM_Freightclaimsubmit} =  //button[@name='proceed']
${NWM_FreightCalculate}=  id=simulate-warranty
*** Keywords ***
warranty claim number search
  Input Text    ${WM_ClaimNumberField}    ${WM_ClaimNumberFieldValue}
  Click Element    ${WM_SearchClaimsButton}
  Sleep    3s
  Wait Until Page Contains    ${WM_ClaimNumberFieldValue}
  ${ClaimNoSearchResult}=  Set Variable  ${WM_ClaimNumberFieldValue}
  ${actualClaiSearchResult}=  Get Text    ${WM_ClaimNumberSearchResultFieldRow}
  Should Be Equal As Strings    ${ClaimNoSearchResult}     ${actualClaiSearchResult}
  Sleep    2s
  Click Element    ${WM_ClearSearchButton}

warranty workorder search
  Input Text    ${WM_WorkOrderField}  ${WM_WorkOrderFieldValue}
  Click Element    ${WM_SearchClaimsButton}
  Sleep    2s
  Page Should Contain    ${WM_WorkOrderFieldValue}
  Click Element    ${WM_ClearSearchButton}

warranty submit date range search
  Input Text    ${WM_SubmitDateFromField}    ${WM_SubmitDateFromFieldValue}
  Press Keys   ${WM_SubmitDateFromField}   ENTER
  Input Text    ${WM_SubmitDateEndField}    ${WM_SubmitDateEndFieldValue}
  Press Keys   ${WM_SubmitDateFromField}   ENTER
  Click Element    ${WM_SearchClaimsButton}
  Sleep    2s
  Page Should Contain    ${WM_SubmitDateFromFieldValue}
  Click Element    ${WM_ClearSearchButton}

warranty partno search
  Input Text    ${WM_PartNumberField}    ${WM_PartNumberFieldValue}
  Click Element    ${WM_SearchClaimsButton}
  Sleep    2s
  Page Should Contain    ${WM_PartSearchClaimvalue}
  Click Element    ${WM_ClearSearchButton}

Warranty serialnumber search
  Input Text    ${WM_SerialNumberField}    ${WM_SerialNumberFieldValue}
  Sleep    1s
  Click Element    ${WM_SearchClaimsButton}
  Sleep    2s
  Page Should Contain    ${WM_SerialNumberFieldValue}
  Click Element    ${WM_ClearSearchButton}

Warranty approval date search
  Input Text    ${WM_ApprovalDateFromField}    ${WM_ApprovalDateFromFieldValue}
  Press Keys    ${WM_ApprovalDateFromField}  ENTER
  Input Text    ${WM_ApprovalDateToField}    ${WM_ApprovalDateToFieldValue}
  Press Keys    ${WM_ApprovalDateFromField}  ENTER
  Click Element    ${WM_SearchClaimsButton}
  Sleep    2s
  Page Should Contain    ${WM_ApprovalDateFromFieldValue}
  Click Element    ${WM_ClearSearchButton}
  
Warranty status search
  Click Element    ${WM_ClaimStatusDropdown}
  Click Element    ${WM_ProcessedStatusvalue}
  Click Element    ${WM_SearchClaimsButton}
  Sleep    2s
  Page Should Contain  ${WM_ProcessedStatusSearchResult}
  Click Element    ${WM_ClearSearchButton}

claim type search
  Sleep    4s
  Click Element    ${WM_ClaimTypeDropdown}
  Wait Until Element Is Visible    ${WM_TruckClaim}
  Click Element    ${WM_TruckClaim}
  Sleep    2s
  Click Element    ${WM_SearchClaimsButton}
  Sleep    3s
  Page Should Contain    ${WM_TruckClaimSearchresult}
  Click Element    ${WM_ClearSearchButton}
  
Dealet Action requird search
  Click Element    ${WM_DealerActionRequiredButton}
  Click Element    ${WM_SearchClaimsButton}
  Sleep    2s
  Page Should Contain Element   ${WM_DealerActionRequiredIcon}
  Click Element    ${WM_ClearSearchButton}
  
Warranty message search
  Click Element    ${WM_NewMessageButton}
  Click Element    ${WM_SearchClaimsButton}
  Sleep    2s
  Page Should Contain Element    ${WM_MessageIcon}
  Click Element    ${WM_ClearSearchButton}


verify the warranty management sorting
  Click Element    ${WM_SearchClaimsButton}
  Sleep    3s
  Click Element    ${WM_ClaimHeader}
  Sleep    1s
  ${actual01} =  Get Text    ${WM_ClaimHeaderFirstrow}
  Should Be Equal As Strings    ${WM_ClaimHeaderAsc}    ${actual01}
  Click Element    ${WM_ClaimHeader}
  Sleep    1s
  Click Element    ${WM_submitDateHeader}
  Sleep    1s
  ${actual02} =  Get Text    ${WM_SubmitDateHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${WM_SubmitDateHeaderAsc}    ${actual02}
  Click Element    ${WM_submitDateHeader}
  Sleep    1s
  Click Element    ${WM_WorkOrderHeader}
  Sleep    1s
  ${actual03} =  Get Text    ${WM_WorkOrderHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${WM_WorkOrderHeaderAsc}    ${actual03}
  Click Element    ${WM_WorkOrderHeader}
  Sleep    1s
  Click Element    ${WM_SerialHeader}
  Sleep    2s
  ${actual04} =  Get Text    ${WM_SerialHeaderFirstrow}
  ${ActualOriginal01}=  Evaluate    "${Actual04}".strip()
  Sleep    1s
  Should Be Equal As Strings    ${WM_SerialHeaderAsc}    ${ActualOriginal01}
  Click Element    ${WM_SerialHeader}
  Sleep    1s
  Click Element    ${WM_ClaimTypeHeader}
  Sleep    1s
  ${actual05} =  Get Text    ${WM_ClaimTypeHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${WM_ClaimTypeHeaderAsc}    ${actual05}
  Click Element    ${WM_ClaimTypeHeader}
  Sleep    1s
  Click Element    ${WM_DueDateHeader}
  Sleep    1s
  ${actual06} =  Get Text    ${WM_DueDateHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${WM_DueDateHeaderAsc}    ${actual06}
  Sleep    1s
  Click Element    ${WM_DueDateHeader}
  Sleep    1s
  Click Element    ${WM_CustomerHeader}
  Sleep    1s
  ${actual07} =  Get Text    ${WM_CustomerHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${WM_CustomerHeaderAsc}    ${actual07}
  Click Element    ${WM_CustomerHeader}
  Sleep    1s
  Click Element    ${WM_StatusHeader}
  Sleep    3s
  ${actual08} =  Get Text    ${WM_StatusHeaderFirstrow}
  Should Be Equal As Strings    ${WM_StatusHeaderAsc}    ${actual08}
  Sleep    1s
  Click Element    ${WM_ClaimAmountHeader}
  Sleep    1s
  ${actual09} =  Get Text    ${WM_ClaimAmountHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${WM_ClaimAmountHeaderAsc}    ${actual09}
  Click Element    ${WM_ClaimAmountHeader}
  Sleep    1s
  Click Element    ${WM_ApprovalDateHeader}
  Sleep    1s
  ${actual10} =  Get Text    ${WM_ApprovalDateHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${WM_ApprovalDateHeaderAsc}    ${actual10}
  Click Element    ${WM_ApprovalDateHeader}
verify the warranty management lazyload
  Click Element    ${WM_SearchClaimsButton}
  Execute JavaScript    window.scrollBy(0,200)
  sleep    5s
  Wait Until Element Is Visible    css=.table-responsive.freeze-header
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollLeft=-200;
  page should contain element    ${FT_serialno_40}
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollTop=1500;
  sleep    5s
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollTop=3500;
  Sleep    3s
  page should contain element    ${FT_serialno_80}
  page should not contain element    ${FT_serialno_81}

Submit the truck claim
  Wait Until Element Is Visible    ${WM_CreateNewwarrantyclaim}
  Click Element    ${WM_CreateNewwarrantyclaim}
  Wait Until Element Is Visible    ${NWM_EquipmentSerialNumberField}
  Input Text    ${NWM_EquipmentSerialNumberField}    ${NWM_SerialNo}
  Wait Until Element Is Enabled    ${NWM_SubmitButton}
  Click Element    ${NWM_SubmitButton}
  Wait Until Element Is Visible    ${NWM_WorkOrderField}
  Input Text    ${NWM_WorkOrderField}  ${NWM_WorkorderFieldValue}
  Wait Until Element Is Visible    ${NWM_PartCausingFailureField}
  Input Text    ${NWM_PartCausingFailureField}    ${NWM_PartCausingFailureFieldValue}
  Wait Until Element Is Visible    ${NWM_hourMeterField}
  Input Text    ${NWM_hourMeterField}  ${NWM_hourMeterFieldValue}
  Wait Until Element Is Visible    ${NWM_FailureDateField}
  Input Text    ${NWM_FailureDateField}    ${NWM_FailureDateFieldValue}
  Wait Until Element Is Visible    ${NWM_RepairDateField}
  Input Text    ${NWM_RepairDateField}    ${NWM_RepairDateFieldValue}
  Wait Until Element Is Visible    ${NWM_NotesField}
  Input Text    ${NWM_NotesField}    ${NWM_NotesFieldValue}
  Wait Until Element Is Visible    ${NWM_ProceedButton}
  Click Element    ${NWM_ProceedButton}
  Wait Until Element Is Visible    ${NWM_AddLindePartsLink}
  Click Element    ${NWM_AddLindePartsLink}
  Wait Until Element Is Visible    ${NWM_LindePartField}
  Input Text    ${NWM_LindePartField}   ${NWM_LindePartValue}
  Wait Until Element Is Visible    ${NWM_LindePartField}
  Press Keys   ${NWM_LindePartField}  ENTER
  Wait Until Element Is Visible    ${NWM_AddToClaimButton}
  Click Element    ${NWM_AddToClaimButton}
  Wait Until Element Is Visible    ${NWM_AddNonLindePartsButton}
  Click Element    ${NWM_AddNonLindePartsButton}
  Wait Until Element Is Visible    ${NWM_NonLindeQTYField}
  Input Text    ${NWM_NonLindeQTYField}    ${NWM_NonLindeQTYFieldValue}
  Wait Until Element Is Visible    ${NWM_NonLindeDescriptionField}
  Input Text    ${NWM_NonLindeDescriptionField}    ${NWM_NonLindeDescriptionFieldValue}
  Wait Until Element Is Visible    ${NWM_NonLindeAmountField}
  Input Text    ${NWM_NonLindeAmountField}    ${NWM_NonLindeAmountValue}
  Wait Until Element Is Visible    ${NWM_AddToClaimButton}
  Click Element    ${NWM_AddToClaimButton}
  Wait Until Element Is Visible    ${NWM_AddMiscPartLink}
  Click Element    ${NWM_AddMiscPartLink}
  Wait Until Element Is Visible    ${NWM_MiscDescriptionField}
  Input Text    ${NWM_MiscDescriptionField}    ${NWM_MiscDescriptionFieldValue}
  Wait Until Element Is Visible    ${NWM_MiscAmountField}
  Input Text    ${NWM_MiscAmountField}    ${NWM_MiscAmount}
  Wait Until Element Is Visible    ${NWM_AddToClaimButton}
  Click Element    ${NWM_AddToClaimButton}
  Wait Until Element Is Visible    ${NWM_EditLabourItemLink}
  Click Element    ${NWM_EditLabourItemLink}
  Wait Until Element Is Visible    ${NWM_ShopLaourField}
  Clear Element Text    ${NWM_ShopLaourField}
  Wait Until Element Is Visible    ${NWM_ShopLaourField}
  Input Text    ${NWM_ShopLaourField}    ${NWM_ShopLaourFieldValue}
  Wait Until Element Is Visible    ${NWM_FieldlabourField}
  Clear Element Text    ${NWM_FieldlabourField}
  Wait Until Element Is Visible    ${NWM_FieldlabourField}
  Input Text    ${NWM_FieldlabourField}    ${NWM_FieldlabourFieldValue}
  Wait Until Element Is Visible    ${NWM_TravelLabourField}
  Clear Element Text    ${NWM_TravelLabourField}
  Wait Until Element Is Visible    ${NWM_TravelLabourField}
  Input Text    ${NWM_TravelLabourField}    ${NWM_TravelLabourFieldValue}
  Wait Until Element Is Visible    ${NMW_AddLaboutItemAddcalimButton}
  Click Element    ${NMW_AddLaboutItemAddcalimButton}
  Wait Until Element Is Visible    ${NWM_BackToClaimButton}
  Click Element    ${NWM_BackToClaimButton}
  Wait Until Element Is Visible    ${NWM_CalculateButton}
  Click Element    ${NWM_CalculateButton}
  Wait Until Element Is Visible    ${NWM_EndSubmit}
  Click Element    ${NWM_EndSubmit}
  Wait Until Page Contains    ${NWM_SubmittedStatus}
  Page Should Contain    ${NWM_SubmittedStatus}

Submit the part claim
  Click Element    ${WM_CreateNewwarrantyclaim}
  Sleep    3s
  Click Element    ${NWM_ClaimTypeDropdown}
  Sleep    1s
  Click Element    ${NWM_PartClaim}
  Click Element    ${NWM_SubmitButton}
  Input Text    ${NWM_WorkOrderField}   ${NWM_WorkorderFieldValue}
  Input Text    ${NWM_PartCausingFailureField}    ${NWM_PartCausingFailureFieldValue}
  Sleep    2s
  Input Text    ${NWM_PartInstallDateField}  ${NWM_FailureDateFieldValue}
  Sleep    2s
  Input Text    ${NWM_FailureDateField}    ${NWM_FailureDateFieldValue}
  Sleep    1s
  Input Text    ${NWM_NotesField}    ${NWM_NotesFieldValue}
  Click Element    ${NWM_ProceedButton}
  Sleep    2s
  Click Element    ${NWM_AddLineItemButton}
  Sleep    3s
  Wait Until Page Contains    Edit Warranty Claim
  Sleep    2s
  Input Text    ${NMW_LineItemField}    ${WM_PartNumberFieldValue}
  Press Keys    ${NMW_LineItemField}   ENTER
  Click Element    ${NWM_AddToClaimButton}
  Click Element    ${NWM_BackToClaimButton}
  Click Element    ${NWM_CalculateButton}
  Click Element    ${NWM_EndSubmit}
  Sleep    2s
  Page Should Contain  ${NWM_SubmittedStatus}
  
Submit the Freight Claim
  Click Element    ${WM_CreateNewwarrantyclaim}
  Sleep    3s
  Click Element    ${NWM_ClaimTypeDropdown}
  Sleep    2s
  Click Element    ${NWM_FreightClaim}
  Click Element    ${NWM_SubmitButton}
  Input Text    ${NWM_FreightNoteField}    ${NWM_FreightNoteFieldValue}
  Input Text    ${NWM_FreightValueField}    ${NWM_FreightValueFieldValue}
  Click Element    ${NWM_Freightclaimsubmit}
  Click Element    ${NWM_FreightCalculate}
  Click Element    ${NWM_EndSubmit}
  Page Should Contain  ${NWM_SubmittedStatus}