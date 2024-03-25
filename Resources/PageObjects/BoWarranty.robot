*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#Admin Installation page navigation
${AW_Link} =  //a[normalize-space()='Warranty']

${AW_ClaimNumberField} =  //div[@class='col-sm-8']//input[@name='Warranty_ClaimNumber']
${AW_ClaimNumberFieldValue} =  7425441
${AW_ClaimNumberSearchResultFieldRow} =  //tbody[@id='warranty-results-body']//tr[1]//td[2]
${AW_DealerNumberField} =  //div[@class='col-sm-8']//input[@name='Warranty_DealerNumber']
${AW_DealerNumberFieldValue} =  53464
${AW_DealerNumberSearchResultFieldRow} =  //tbody[@id='warranty-results-body']//tr[1]//td[4]
${AW_WorkOrderField} =  //div[@class='col-sm-8']//input[@name='Warranty_WorkOrder']
${AW_WorkOrderFieldValue} =  test
${AW_SubmitDateFromField} =  //input[@id='submittedDateStart']
${AW_SubmitDateFromFieldValue} =  11/23/2023
${AW_SubmitDateEndField}=  //input[@id='submittedDateEnd']
${AW_SubmitDateEndFieldValue} =  03/13/23
${AW_RowNumberFieldValue} =  1
${AW_SubmitDateSearchResultFieldRow} =  //tbody[@id='warranty-results-body']//tr[1]//td[1]
${AW_PartNumberField} =  //input[@name='Warranty_PartNumber']
${AW_PartNumberFieldValue} =  X25080FJ10
${AW_PartSearchClaimvalue} =  7425485
${AW_SerialNumberField} =  //div[@class='col-sm-8']//input[@name='Warranty_SerialNumber']
${AW_SerialNumberFieldValue} =  W4X360Z01430
${AW_TruckModelField} =  //div[@class='col-sm-8']//input[@name='Warranty_TruckModel']
${AW_TruckModelFieldValue} =  H80D 396-03 Series Finished Truck
${AW_TruckModelSearchResult} =  GREAT SOUTHERN WOOD PRESERVING, INC
${AW_BillingBlockField} =  //select[@name='Warranty_BillingBlock']
${AW_BillingBlockFieldValue} =  //select[@name='Warranty_BillingBlock']//option[8]
${AW_BillingBlockSearchResult} =  No results found.
${AW_DueDateFromField} =  //input[@id='dueDateStart']
${AW_DueDateFromFieldValue} =  09/01/2022
${AW_DueDateSearchResultValue} =  06/05/23
${AW_DueDateToField} =  //input[@id='dueDateEnd']
${AW_DueDateToFieldValue} =  03/10/2024
${AW_DueDateSearchResultFieldRow} =  //tbody//tr[1]//td[15]
${AW_ApprovalDateFromField} =  //input[@id='approvalDateStart']
${AW_ApprovalDateFromFieldValue} =  12/14/2023
${AW_ApprovalDateToField} =  //input[@id='approvalDateEnd']
${AW_ApprovalDateToFieldValue} =  03/13/2024
${AW_ApprovalDateSearchResult} =  01/30/24
${AW_ApprovalDateSearchResultFieldRow} =  //tbody//tr[1]//td[3]
${AW_ClaimStatusDropdown} =  //div[@class='col-sm-8']//select[@name='Warranty_ClaimStatus']
${AW_PendingStatusvalue} =  //option[.='Pending Claims']
${AW_ApprovedStatusvalue} =  //option[.='Approved Claims']
${AW_PendingStatusSearchResult} =  Pending
${AW_ClaimTypeDropdown} =  //select[@name='Warranty_ClaimType']
${AW_TruckClaim} =  //option[.='Truck']
${AW_TruckClaimSearchresult} =  Truck
${AW_PartCaim} =  //option[.='Part']
${AW_FreightClaim} =  //option[.='Freight']
${AW_DealerActionRequiredButton} =  //span[normalize-space()='Dealer Action Required']
${AW_DealerActionRequiredSearchResult} =  X
${AW_DealerActionSearchResultFieldRow} =  //tr[@id='warranty-result-row-1']//td[14]
${AW_NewMessageButton} =  //div[@class='not-icon']//span[@class='linde-icon msg-icon']
${AW_MessageSearchResultFieldRow} =  //tr[@id='warranty-result-row-1']//td[16]
${AW_MessageIcon} =  (3)
${AW_SearchClaimsButton} =  //button[@id='warranty-search-claims']
${AW_NextReviewerDropdown} =  //select[@name='Warranty_NextReviewer']
${AW_NextReviewerOption} =  //option[@value='F0cKAQJE2ToAAAGCcPFrFTUT']
${AW_NextReviewerName} =  Peth Admin

#Sorting
${AW_ClaimHeader} =  //a[@id='claimnumber_col']
${AW_ClaimHeaderAsc} =  N/A
${AW_submitDateHeader} =  //a[@id='submitteddate_col']
${AW_submitDateHeaderAsc} =  ${EMPTY}
${AW_DealerHeader} =  //a[@id='dealernumber_col']
${AW_DealerHeaderAsc} =  50013
${AW_DealerNameHeader} =  //a[@id='dealername_col']
${AW_DealerNameHeaderAsc} =  BRAVO MONTACARGAS DE SALTILLO SAPI
${AW_WorkOrderHeader} =  //a[@id='workorder_col']
${AW_WorkOrderHeaderAsc} =  ${EMPTY}
${AW_RepairDateHeader} =  //a[@id='repairdate_col']
${AW_RepairDateHeaderAsc} =  ${EMPTY}
${AW_TypeHeader} =  //a[@id='claimtype_col']
${AW_TypeHeaderAsc} =  F
${AW_HourmeterHeader} =  //a[@id='hourmeteramount_col']
${AW_HourmeterAsc} =  ${EMPTY}
${AW_SerialHeader} =  //a[@id='serialnumber_col']
${AW_SerialHeaderAsc} =  ${EMPTY}
${AW_DueDateHeader} =  //a[@id='duedate_col']
${AW_DueDateHeaderAsc} =  ${EMPTY}
${AW_StatusHeader} =  //a[@id='claimstatus_col']
${AW_StatusHeaderAsc} =  New
${AW_BillingBlockHeader} =  //a[@id='billingblock_col']
${AW_BillingBlockHeaderAsc} =  ${EMPTY}
${AW_DAHeader} =  //a[@id='dealeractionrequired_col']
${AW_DAHeaderAsc} =  ${EMPTY}
${AW_MessageHeader} =  //a[@id='msg_col']
${AW_MessageHeaderAsc} =  ${EMPTY}
${AW_NxtReviewerHeader} =  //a[@id='nextreviewer_col']
${AW_NxtReviewerHeaderAsc} =  ${EMPTY}
${AW_ClaimAmountHeader} =  //a[@id='claimamount_col']
${AW_ClaimAmountHeaderAsc} =  $ 0.00
${AW_ClaimHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[2]
${AW_SubmitDateHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[3]
${AW_DealerHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[4]
${AW_DealerNameHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[5]
${AW_WorkOrderHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[6]
${AW_RepairDateHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[7]
${AW_TypeHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[8]
${AW_SerialHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[9]
${AW_HourMeterHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[10]
${AW_ClaimTypeHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[7]
${AW_DueDateHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[15]
${AW_StatusHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[12]
${AW_BillingBlockHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[13]
${AW_ClaimAmountHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[11]
${AW_DAHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[14]
${AW_MsgHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[16]
${AW_NxtReviewerHeaderFirstrow} =  //tbody[@id='warranty-results-body']//tr[1]//td[17]
#LazyLoad
${AW_serialno_15} =  //td[normalize-space()='15']
${AW_serialno_30} =  //td[normalize-space()='30']
${Aw_serialno_31} =  //td[normalize-space()='31']
#Bulk Approval page
${PerformBulkApprovalLink} =  //a[normalize-space()='Perform Bulk Approval']
${PerformBulkApprovalHeading} =  Perform Bulk Approval
${AW_ApproveButton} =  //button[@name='bulkApproveClaim']
${AW_PreApprovedStatusText} =  PreApproved
#Truck claim
${AWD_ClaimNumber} =  7425595
${AWD_ClaimNumberDetailsLink} =  //tbody[@id='warranty-results-body']//tr[1]//td[2]
${AWD_AdminwarrantyPageheading} =  Warranty Claim Detail
${AWD_AdminSelectedClaimHeader} =  Selected Claim
${AWD_DealerLabelAdmin} =  Dealer:
${AWD_DealerValue} =  53464 - ELEVEX (FORMERLY MANUTENTION QUEBEC)USUALL
${AWD_ClaimTypeLabel} =  Claim Type:
${AWD_ClaimTypeValue} =  Truck Claim
${AWD_ClaimNumberLabel} =  Claim Number:
${AWD_ClaimNumberValue} =  7425595
${AWD_ContactLabel} =  Contact:
${AWD_ContactValue} =  Mari CY
${AWD_SubmitDateLabel} =  Submit Date:
${AWD_SubmitDateValue} =  03/15/24
${AWD_ContactPhoneLabel} =  Contact Phone #:
${AWD_ClaimStatusLabel} =  Claim Status:
${AWD_ClaimStatusValue} =  New
${AWD_InstallationTypeLabel} =  Installation Type:
${AWD_InstallationTypeValue} =  N/A
${AWD_TruckModelLabel} =  Truck Model:
${AWD_TruckModelvalue} =  H30D 393 Series Finished Truck
${AWD_EngineManuafacturerlabel} =  Engine Manufacturer:
${AWD_EngineManuafacturervalue} =  VW
${AWD_SerialLabel} =  Serial #:
${AWD_Serialvalue} =  H2X393P02340
${AWD_EngineSerialLabel} =  Engine Serial #:
${AWD_EngineSerialValue} =  BEU001874
${AWD_SalesOrderLabel} =  Sales Order #:
${AWD_SalesOrderValue} =  1186952
${AWD_ExtendedWarrantyLabel} =  Extended Warranty:
${AWD_ExtendedWarrantyValue} =  No.
${AWD_InstallationDateLabel} =  Installation Date:
${AWD_WarrantyAdministrationHeader} =  Warranty Administration
${AWD_AdministratorLoginlabel} =  Administrator Logged in:
${AWD_AdministratorLoginValue} =  Peth Admin
${AWD_ReviewedClaimLabel} =  Reviewed Claim:
${AWD_ReviewedClaimValue} =  7425595
${AWD_NextReviewerlabel} =  Next Reviewer:
${AWD_NextReviewerValue} =  N/A
${AWD_CurrentBlockLabel} =  Current Block:
${AWD_CurrentBlockValue1} =  99
${AWD_CurrentBlockValue2} =  -
${AWD_CurrentBlockValue3} =  Wait for BC Reason
${AWD_PolicyCodeLabel} =  //span[.='Failure Code:']
${AWD_PolicycodelabelCount} =  2
${AWD_PolicyCodeValue} =  400
${AWD_FailureCodeLabel} =  //span[.='Failure Code:']
${AWD_failurecodelabelCount} =  2
${AWD_FailureCodeValue} =  N/A
${AWD_CurrentDuedateLabel} =  Current Due Date:
${AWD_CurrentDuedateValue} =  03/15/24
${AWD_BackButton} =  //a[normalize-space()='Back']
${AWD_PrintButton} =  //button[@id='claim-print']
${AWD_EditImagesButton} =  //a[normalize-space()='Edit Image']
${AWD_CustomerLabel} =  Customer:
${AWD_WorkOrderLabel} =  Work Order #:
${AWD_WorkOrdertextBox} =  //input[@name='WorkOrder']
${AWD_FailureDateLabel} =  Failure Date:
${AWD_FailureDateTextBox} =  //input[@id='FailureDate']
${AWD_PartNoCausingFailureLabel} =  Part No Causing Failure:
${AWD_PartNoCausingFailuretextBox} =  //input[@name='CausingFailure']
${AWD_RepairDateLabel} =  Repair Date:
${AWD_RepairDatevalue} =  //input[@id='RepairDate']
${AWD_HourMeterlabel} =  Hour Meter:
${AWD_HourmeterTextBox} =  //input[@name='HourMeter']
${AWD_DescriptionOfFailureLabel} =  Description of Failure:
${AWD_DecriptionOfFailureField} =  //textarea[@name='Notes']
${AWD_LindeInternalNoteslabel} =  Linde Internal Notes:
${AWD_LindeInternalNotesField} =  //textarea[@name='InternalNotes']
${AWD_ReviewHeader} =  Review
${AWD_FailureCdeField} =  //input[@name='FailureCode']
${AWD_PolicycodeField} =  //div[@class='deal-action-info col-xs-12 p-0 border-b-2']
${AWD_BillingBlockLabel} =  Billing Block:
${AWD_BillingBlockDropDown} =  //select[@name='Billingblock']
${AWD_BillingDueDatelabel} =  Billing Due Date:
${AWD_BillingDueDateField} =  //input[@id='BillDueDate']
${AWD_UpdateClaimLabel} =  Update Claim:
${AWD_UpdateButton} =  //button[@name='reviewClaim']
${AWD_PreApprovelabel} =  PRE-APPROVE:
${AWD_ApproveButton} =  //button[@name='preapproveClaim']
${AWD_MessageLabel} =  There is 0 message
${AWD_ViewMessageButton} =  //a[normalize-space()='View Messages']
${AWD_NewMessageButton} =  //a[normalize-space()='New Message']
${AWD_NextReviewerDropdown} =  //select[@name='NextReviewerId']
${AWD_NextReviewerDropdownUpdateButton} =  //button[@name='updateIntNotesReviewer']
${AWD_ClaimProcessingMessageLabel} =  Claim Processing Messages
${AWD_ClaimLineItemSection} =  Claim Items
${AWD_LineItemUpdate} =  //button[@id='add-line-item']

#Partclaim
${AWD_PartClaimNumber} =  7425604
${AWD_PartClaimTypeValue} =  Part Claim
${AWD_PartClaimSubmitDateValue} =  03/18/24
${AWD_PartReviewedValue} =  7425604
${AWD_PartPolicyCodevalue} =  402
${AWD_PartCurrentDuedateValue} =  03/18/24
#Freightclaim
${AWD_FreightClaimNumber} =  7425605
${AWD_FreightClaimTypeValue} =  Freight Claim
${AWD_FreightClaimSubmitDateValue} =  03/18/24
${AWD_FreightReviewedValue} =  7425605
${AWD_FreightPolicyCodevalue} =  410
${AWD_FreightCurrentDuedateValue} =  03/18/24
*** Keywords ***
Go to admin warranty
   Click Element   ${AW_Link}
Admin warranty claim number search
  Input Text    ${AW_ClaimNumberField}    ${AW_ClaimNumberFieldValue}
  Click Element    ${AW_SearchClaimsButton}
  Sleep    3s
  Wait Until Page Contains    ${AW_ClaimNumberFieldValue}
  ${ClaimNoSearchResult}=  Set Variable  ${AW_ClaimNumberFieldValue}
  ${actualClaiSearchResult}=  Get Text    ${AW_ClaimNumberSearchResultFieldRow}
  Should Be Equal As Strings    ${ClaimNoSearchResult}     ${actualClaiSearchResult}
  Sleep    2s
  Clear Element Text    ${AW_ClaimNumberField}

Admin warranty dealer number search
  Input Text    ${AW_DealerNumberField}    ${AW_DealerNumberFieldValue}
  Click Element    ${AW_SearchClaimsButton}
  Sleep    3s
  Wait Until Page Contains    ${AW_DealerNumberFieldValue}
  ${DealerNoSearchResult}=  Set Variable  ${AW_DealerNumberFieldValue}
  ${actualDealerSearchResult}=  Get Text    ${AW_DealerNumberSearchResultFieldRow}
  Should Be Equal As Strings    ${DealerNoSearchResult}     ${actualDealerSearchResult}
  Sleep    2s
  Clear Element Text    ${AW_DealerNumberField}

Admin warranty workorder search
  Input Text    ${AW_WorkOrderField}  ${AW_WorkOrderFieldValue}
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  Page Should Contain    ${AW_WorkOrderFieldValue}
  Clear Element Text    ${AW_WorkOrderField}

Admin warranty submit date range search
  Input Text    ${AW_SubmitDateFromField}    ${AW_SubmitDateFromFieldValue}
  Press Keys   ${AW_SubmitDateFromField}   ENTER
  Input Text    ${AW_SubmitDateEndField}    ${AW_SubmitDateEndFieldValue}
  Press Keys   ${AW_SubmitDateEndField}   ENTER
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  ${SubmitDateSearchResult}=  Set Variable  ${AW_RowNumberFieldValue}
  ${actualSubmitDateSearchResult}=  Get Text    ${AW_SubmitDateSearchResultFieldRow}
  Should Be Equal As Strings    ${SubmitDateSearchResult}     ${actualSubmitDateSearchResult}
  Clear Element Text    ${AW_SubmitDateFromField}
  Clear Element Text    ${AW_SubmitDateEndField}

Admin warranty partno search
  Input Text    ${AW_PartNumberField}    ${AW_PartNumberFieldValue}
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  Page Should Contain    ${AW_PartSearchClaimvalue}
  Clear Element Text    ${AW_PartNumberField}

Admin Warranty serialnumber search
  Input Text    ${AW_SerialNumberField}    ${AW_SerialNumberFieldValue}
  Sleep    1s
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  Page Should Contain    ${AW_SerialNumberFieldValue}
  Clear Element Text    ${AW_SerialNumberField}

Admin Warranty status search
  Double Click Element    ${AW_ClaimStatusDropdown}
  Click Element    ${AW_PendingStatusvalue}
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  Page Should Contain  ${AW_PendingStatusSearchResult}

Admin claim type search
  Sleep    2s
  Click Element    ${AW_ClaimTypeDropdown}
  Wait Until Element Is Visible    ${AW_TruckClaim}
  Click Element    ${AW_TruckClaim}
  Sleep    2s
  Click Element    ${AW_SearchClaimsButton}
  Sleep    3s
  Page Should Contain    ${AW_TruckClaimSearchresult}
  Sleep    2s

Admin Dealet Action requird search
  Click Element    ${AW_DealerActionRequiredButton}
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  ${DealerActionSearchResult}=  Set Variable  ${AW_DealerActionRequiredSearchResult}
  ${actualDealerActionSearchResult}=  Get Text    ${AW_DealerActionSearchResultFieldRow}
  Should Be Equal As Strings     ${DealerActionSearchResult}    ${actualDealerActionSearchResult}
  Click Element    ${AW_DealerActionRequiredButton}

Admin Warranty message search
  Click Element    ${AW_NewMessageButton}
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  ${WarrantyMessageSearchResult}=  Set Variable  ${AW_MessageIcon}
  ${actualMessageSearchResult}=  Get Text    ${AW_MessageSearchResultFieldRow}
  Should Be Equal As Strings     ${WarrantyMessageSearchResult}     ${actualMessageSearchResult}
  Click Element    ${AW_NewMessageButton}
  
Admin Truck Model Search
   Input Text    ${AW_TruckModelField}    ${AW_TruckModelFieldValue}
   Click Element    ${AW_SearchClaimsButton}
   Sleep    2s
   Page Should Contain  ${AW_TruckModelSearchResult}
   Clear Element Text    ${AW_TruckModelField}

Admin Warranty Due date search
  Input Text    ${AW_DueDateFromField}    ${AW_DueDateFromFieldValue}
  Press Keys    ${AW_DueDateFromField}  ENTER
  Input Text    ${AW_DueDateToField}    ${AW_DueDateToFieldValue}
  Press Keys    ${AW_DueDateFromField}  ENTER
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  ${DueDateSearchResult}=  Set Variable  ${AW_DueDateSearchResultValue}
  ${actualDueDateSearchResult}=  Get Text    ${AW_DueDateSearchResultFieldRow}
  Should Be Equal As Strings    ${DueDateSearchResult}    ${actualDueDateSearchResult}
  Clear Element Text    ${AW_DueDateFromField}
  Clear Element Text    ${AW_DueDateToField}

Admin Warranty Approval date search
  Double Click Element    ${AW_ClaimStatusDropdown}
  Click Element    ${AW_ApprovedStatusvalue}
  Input Text    ${AW_ApprovalDateFromField}    ${AW_ApprovalDateFromFieldValue}
  Press Keys    ${AW_ApprovalDateFromField}  ENTER
  Input Text    ${AW_ApprovalDateToField}    ${AW_ApprovalDateToFieldValue}
  Press Keys    ${AW_ApprovalDateFromField}  ENTER
  Click Element    ${AW_SearchClaimsButton}
  Sleep    2s
  ${ApprovalDateSearchResult}=  Set Variable  ${AW_ApprovalDateSearchResult}
  ${actualDueDateSearchResult}=  Get Text    ${AW_ApprovalDateSearchResultFieldRow}
  Should Be Equal As Strings    ${ApprovalDateSearchResult}    ${actualDueDateSearchResult}
  Clear Element Text    ${AW_ApprovalDateFromField}
  Clear Element Text    ${AW_ApprovalDateToField}

Admin Next reviewer search
  Sleep    2s
  Click Element    ${AW_NextReviewerDropdown}
  Click Element    ${AW_NextReviewerOption}
  Click Element    ${AW_SearchClaimsButton}
  Sleep    3s
  Page Should Contain    ${AW_NextReviewerName}
  Sleep    2s

verify the warranty management sorting
  Click Element    ${AW_SearchClaimsButton}
  Sleep    3s
  Click Element    ${AW_ClaimHeader}
  Sleep    1s
  ${actual01} =  Get Text    ${AW_ClaimHeaderFirstrow}
  Should Be Equal As Strings    ${AW_ClaimHeaderAsc}    ${actual01}
  Click Element    ${AW_ClaimHeader}
  Sleep    1s
  Click Element    ${AW_submitDateHeader}
  Sleep    2s
  ${actual02} =  Get Text    ${AW_SubmitDateHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_SubmitDateHeaderAsc}    ${actual02}
  Click Element    ${AW_submitDateHeader}
  Sleep    1s
  Click Element    ${AW_DealerHeader}
  Sleep    1s
  ${actual03} =  Get Text    ${AW_DealerHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_DealerHeaderAsc}    ${actual03}
  Click Element    ${AW_DealerHeader}
  Sleep    1s
  Click Element    ${AW_DealerNameHeader}
  Sleep    1s
  ${actual04} =  Get Text    ${AW_DealerNameHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_DealerNameHeaderAsc}    ${actual04}
  Click Element    ${AW_DealerNameHeader}
  Sleep    1s
  Click Element    ${AW_WorkOrderHeader}
  Sleep    1s
  ${actual05} =  Get Text    ${AW_WorkOrderHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_WorkOrderHeaderAsc}    ${actual05}
  Click Element    ${AW_WorkOrderHeader}
  Sleep    1s
  Click Element    ${AW_RepairDateHeader}
  Sleep    1s
  ${actual06} =  Get Text    ${AW_RepairDateHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_RepairDateHeaderAsc}    ${actual06}
  Click Element    ${AW_RepairDateHeader}
  Sleep    1s
  Click Element    ${AW_TypeHeader}
  Sleep    1s
  ${actual07} =  Get Text    ${AW_TypeHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_TypeHeaderAsc}    ${actual07}
  Click Element    ${AW_TypeHeader}
  Click Element    ${AW_SerialHeader}
  Sleep    2s
  ${actual08} =  Get Text    ${AW_SerialHeaderFirstrow}
  ${ActualOriginal01}=  Evaluate    "${Actual08}".strip()
  Sleep    1s
  Should Be Equal As Strings    ${AW_SerialHeaderAsc}    ${ActualOriginal01}
  Click Element    ${AW_SerialHeader}
  Sleep    1s
  Click Element    ${AW_HourMeterHeader}
  Sleep    1s
  ${actual09} =  Get Text    ${AW_HourMeterHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_HourMeterAsc}    ${actual09}
  Click Element    ${AW_HourMeterHeader}
  Sleep    1s
  Click Element    ${AW_ClaimAmountHeader}
  Sleep    1s
  ${actual10} =  Get Text    ${AW_ClaimAmountHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_ClaimAmountHeaderAsc}    ${actual10}
  Click Element    ${AW_ClaimAmountHeader}
  Sleep    1s
  Click Element    ${AW_StatusHeader}
  Sleep    3s
  ${actual11} =  Get Text    ${AW_StatusHeaderFirstrow}
  Should Be Equal As Strings    ${AW_StatusHeaderAsc}    ${actual11}
  Sleep    1s
  Click Element    ${AW_BillingBlockHeader}
  Sleep    3s
  ${actual12} =  Get Text    ${AW_BillingBlockHeaderFirstrow}
  Should Be Equal As Strings    ${AW_BillingBlockHeaderAsc}    ${actual12}
  Sleep    1s
  Click Element    ${AW_BillingBlockHeader}
  Sleep    1s
  Click Element    ${AW_DAHeader}
  Sleep    1s
  ${actual13} =  Get Text    ${AW_DAHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_DAHeaderAsc}    ${actual13}
  Sleep    1s
  Click Element    ${AW_DAHeader}
  Sleep    1s
  Click Element    ${AW_DueDateHeader}
  Sleep    1s
  ${actual14} =  Get Text    ${AW_DueDateHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_DueDateHeaderAsc}    ${actual14}
  Sleep    1s
  Click Element    ${AW_DueDateHeader}
  Sleep    1s
  Click Element    ${AW_MessageHeader}
  Sleep    1s
  ${actual15} =  Get Text    ${AW_MsgHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_MessageHeaderAsc}    ${actual15}
  Click Element    ${AW_MessageHeader}
  Sleep    1s
  Click Element    ${AW_NxtReviewerHeader}
  Sleep    1s
  ${actual16} =  Get Text   ${AW_NxtReviewerHeaderFirstrow}
  Sleep    1s
  Should Be Equal As Strings    ${AW_NxtReviewerHeaderAsc}    ${actual16}
  Click Element    ${AW_NxtReviewerHeader}

verify the warranty management lazyload
  Execute JavaScript    window.scrollBy(0,200)
  sleep    5s
  Wait Until Element Is Visible    css=.table-responsive.freeze-header
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollLeft=-200;
  page should contain element    ${AW_serialno_15}
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollTop=1000;
  sleep    3s
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollTop=1500;
  Sleep    3s
  page should contain element    ${AW_serialno_30}
  page should not contain element    ${AW_serialno_31}

Click the perform bulk approval link
   Page Should Contain Element    ${PerformBulkApprovalLink}
   Click Element    ${PerformBulkApprovalLink}

Verify the bulk approval page and Pre Approved claims
   Page Should Contain   ${PerformBulkApprovalHeading}
   Page Should Contain Element    ${AW_ApproveButton}
   Page Should Contain  ${AW_PreApprovedStatusText}

Verify admin claim details navigation
   Input Text    ${AW_ClaimNumberField}    ${AWD_ClaimNumber}
   Click Element    ${AW_SearchClaimsButton}
   Wait Until Page Contains    ${AWD_ClaimNumber}
   Click Element    ${AWD_ClaimNumberDetailsLink}

Verify admin part claim details navigation
   Input Text    ${AW_ClaimNumberField}    ${AWD_PartClaimNumber}
   Click Element    ${AW_SearchClaimsButton}
   Wait Until Page Contains    ${AWD_PartClaimNumber}
   Click Element    ${AWD_ClaimNumberDetailsLink}

Verify admin Freight claim details navigation
   Input Text    ${AW_ClaimNumberField}    ${AWD_FreightClaimNumber}
   Click Element    ${AW_SearchClaimsButton}
   Wait Until Page Contains    ${AWD_FreightClaimNumber}
   Click Element    ${AWD_ClaimNumberDetailsLink}

Verify the truck claim details page
   Page Should Contain  ${AWD_AdminwarrantyPageheading}
   Page Should Contain  ${AWD_DealerLabelAdmin}
   Page Should Contain    ${AWD_ClaimTypeLabel}
   Page Should Contain    ${AWD_ClaimTypeValue}
   Page Should Contain    ${AWD_ClaimNumberLabel}
   Page Should Contain    ${AWD_ContactLabel}
   Page Should Contain    ${AWD_ContactValue}
   Page Should Contain    ${AWD_SubmitDateLabel}
   Page Should Contain    ${AWD_SubmitDateValue}
   Page Should Contain    ${AWD_ContactPhoneLabel}
   Page Should Contain    ${AWD_ClaimStatusLabel}
   Page Should Contain    ${AWD_ClaimStatusValue}
   Page Should Contain    ${AWD_InstallationTypeLabel}
   Page Should Contain    ${AWD_InstallationTypeValue}
   Page Should Contain    ${AWD_TruckModelLabel}
   Page Should Contain    ${AWD_TruckModelvalue}
   Page Should Contain    ${AWD_EngineManuafacturerlabel}
   Page Should Contain    ${AWD_EngineManuafacturervalue}
   Page Should Contain    ${AWD_SerialLabel}
   Page Should Contain    ${AWD_Serialvalue}
   Page Should Contain    ${AWD_EngineSerialLabel}
   Page Should Contain    ${AWD_EngineSerialValue}
   Page Should Contain    ${AWD_SalesOrderLabel}
   Page Should Contain    ${AWD_SalesOrderValue}
   Page Should Contain    ${AWD_ExtendedWarrantyLabel}
   Page Should Contain    ${AWD_ExtendedWarrantyValue}
   Page Should Contain    ${AWD_InstallationDateLabel}
   Page Should Contain    ${AWD_WarrantyAdministrationHeader}
   Page Should Contain    ${AWD_AdministratorLoginlabel}
   Page Should Contain    ${AWD_AdministratorLoginValue}
   Page Should Contain    ${AWD_ReviewedClaimLabel}
   Page Should Contain    ${AWD_ReviewedClaimValue}
   Page Should Contain    ${AWD_NextReviewerlabel}
   Page Should Contain    ${AWD_NextReviewerValue}
   Page Should Contain    ${AWD_CurrentBlockLabel}
   Page Should Contain    ${AWD_CurrentBlockValue1}
   Page Should Contain    ${AWD_CurrentBlockValue2}
   Page Should Contain    ${AWD_CurrentBlockValue3}
   ${ExpectedPolicyCodecount}=  set variable  ${AWD_PolicycodelabelCount}
   ${PolicyCodeCount}=  Get Element Count  ${AWD_PolicyCodeLabel}
   Should Be Equal As Numbers    ${ExpectedPolicyCodecount}    ${PolicyCodeCount}
   Page Should Contain    ${AWD_PolicyCodeValue}
   ${ExpectedFailureCodecount}=  Set Variable  ${AWD_failurecodelabelCount}
   ${failureCodeCount}=  Get Element Count    ${AWD_FailureCodeLabel}
   Should Be Equal As Numbers    ${ExpectedFailureCodecount}    ${failureCodeCount}
   Page Should Contain    ${AWD_FailureCodeValue}
   Page Should Contain    ${AWD_CurrentDuedateLabel}
   Page Should Contain    ${AWD_CurrentDuedateValue}
   Page Should Contain Element    ${AWD_BackButton}
   Page Should Contain Element   ${AWD_PrintButton}
   Page Should Contain Element  ${AWD_EditImagesButton}
   Page Should Contain  ${AWD_ReviewHeader}
   Page Should Contain  ${AWD_CustomerLabel}
   Page Should Contain  ${AWD_WorkOrderLabel}
   Page Should Contain Element    ${AWD_WorkOrdertextBox}
   Page Should Contain    ${AWD_FailureDateLabel}
   Page Should Contain Element    ${AWD_FailureDateTextBox}
   Page Should Contain    ${AWD_PartNoCausingFailureLabel}
   Page Should Contain Element    ${AWD_PartNoCausingFailuretextBox}
   Page Should Contain    ${AWD_RepairDateLabel}
   Page Should Contain Element    ${AWD_RepairDatevalue}
   Page Should Contain    ${AWD_HourMeterlabel}
   Page Should Contain Element    ${AWD_HourmeterTextBox}
   Page Should Contain  ${AWD_DescriptionOfFailureLabel}
   Page Should Contain Element    ${AWD_DecriptionOfFailureField}
   Page Should Contain    ${AWD_LindeInternalNoteslabel}
   Page Should Contain Element    ${AWD_LindeInternalNotesField}
   Page Should Contain Element    ${AWD_FailureCdeField}
   Page Should Contain Element    ${AWD_PolicycodeField}
   Page Should Contain    ${AWD_BillingBlockLabel}
   Page Should Contain Element    ${AWD_BillingBlockDropDown}
   Page Should Contain    ${AWD_BillingDueDatelabel}
   Page Should Contain Element    ${AWD_BillingDueDateField}
   Page Should Contain  ${AWD_UpdateClaimLabel}
   Page Should Contain Element    ${AWD_UpdateButton}
   Page Should Contain Element    ${AWD_ApproveButton}
   Page Should Contain  ${AWD_MessageLabel}
   Page Should Contain Element    ${AWD_ViewMessageButton}
   Page Should Contain Element    ${AWD_NewMessageButton}
   Page Should Contain Element    ${AWD_NextReviewerDropdown}
   Page Should Contain Element    ${AWD_NextReviewerDropdownUpdateButton}
   Page Should Contain    ${AWD_ClaimProcessingMessageLabel}
   Page Should Contain    ${AWD_ClaimLineItemSection}
   Page Should Contain Element    ${AWD_LineItemUpdate}

Verify the Part claim details page
   Page Should Contain  ${AWD_AdminwarrantyPageheading}
   Page Should Contain  ${AWD_DealerLabelAdmin}
   Page Should Contain    ${AWD_ClaimTypeLabel}
   Page Should Contain    ${AWD_PartClaimTypeValue}
   Page Should Contain    ${AWD_ClaimNumberLabel}
   Page Should Contain    ${AWD_ContactLabel}
   Page Should Contain    ${AWD_ContactValue}
   Page Should Contain    ${AWD_SubmitDateLabel}
   Page Should Contain    ${AWD_PartClaimSubmitDateValue}
   Page Should Contain    ${AWD_ContactPhoneLabel}
   Page Should Contain    ${AWD_ClaimStatusLabel}
   Page Should Contain    ${AWD_ClaimStatusValue}
   Page Should Contain    ${AWD_WarrantyAdministrationHeader}
   Page Should Contain    ${AWD_AdministratorLoginlabel}
   Page Should Contain    ${AWD_AdministratorLoginValue}
   Page Should Contain    ${AWD_ReviewedClaimLabel}
   Page Should Contain    ${AWD_PartReviewedValue}
   Page Should Contain    ${AWD_NextReviewerlabel}
   Page Should Contain    ${AWD_NextReviewerValue}
   Page Should Contain    ${AWD_CurrentBlockLabel}
   Page Should Contain    ${AWD_CurrentBlockValue1}
   Page Should Contain    ${AWD_CurrentBlockValue2}
   Page Should Contain    ${AWD_CurrentBlockValue3}
   ${ExpectedPolicyCodecount}=  set variable  ${AWD_PolicycodelabelCount}
   ${PolicyCodeCount}=  Get Element Count  ${AWD_PolicyCodeLabel}
   Should Be Equal As Numbers    ${ExpectedPolicyCodecount}    ${PolicyCodeCount}
   Page Should Contain    ${AWD_PartPolicyCodevalue}
   ${ExpectedFailureCodecount}=  Set Variable  ${AWD_failurecodelabelCount}
   ${failureCodeCount}=  Get Element Count    ${AWD_FailureCodeLabel}
   Should Be Equal As Numbers    ${ExpectedFailureCodecount}    ${failureCodeCount}
   Page Should Contain    ${AWD_FailureCodeValue}
   Page Should Contain    ${AWD_CurrentDuedateLabel}
   Page Should Contain    ${AWD_PartCurrentDuedateValue}
   Page Should Contain Element    ${AWD_BackButton}
   Page Should Contain Element   ${AWD_PrintButton}
   Page Should Contain Element  ${AWD_EditImagesButton}
   Page Should Contain  ${AWD_ReviewHeader}
   Page Should Contain  ${AWD_WorkOrderLabel}
   Page Should Contain Element    ${AWD_WorkOrdertextBox}
   Page Should Contain    ${AWD_FailureDateLabel}
   Page Should Contain Element    ${AWD_FailureDateTextBox}
   Page Should Contain    ${AWD_PartNoCausingFailureLabel}
   Page Should Contain Element    ${AWD_PartNoCausingFailuretextBox}
   Page Should Contain  ${AWD_DescriptionOfFailureLabel}
   Page Should Contain Element    ${AWD_DecriptionOfFailureField}
   Page Should Contain    ${AWD_LindeInternalNoteslabel}
   Page Should Contain Element    ${AWD_LindeInternalNotesField}
   Page Should Contain Element    ${AWD_FailureCdeField}
   Page Should Contain Element    ${AWD_PolicycodeField}
   Page Should Contain    ${AWD_BillingBlockLabel}
   Page Should Contain Element    ${AWD_BillingBlockDropDown}
   Page Should Contain    ${AWD_BillingDueDatelabel}
   Page Should Contain Element    ${AWD_BillingDueDateField}
   Page Should Contain  ${AWD_UpdateClaimLabel}
   Page Should Contain Element    ${AWD_UpdateButton}
   Page Should Contain Element    ${AWD_ApproveButton}
   Page Should Contain  ${AWD_MessageLabel}
   Page Should Contain Element    ${AWD_ViewMessageButton}
   Page Should Contain Element    ${AWD_NewMessageButton}
   Page Should Contain Element    ${AWD_NextReviewerDropdown}
   Page Should Contain Element    ${AWD_NextReviewerDropdownUpdateButton}
   Page Should Contain    ${AWD_ClaimProcessingMessageLabel}
   Page Should Contain    ${AWD_ClaimLineItemSection}
   Page Should Contain Element    ${AWD_LineItemUpdate}




   

Verify the Freight claim details page
    Page Should Contain  ${AWD_AdminwarrantyPageheading}
   Page Should Contain  ${AWD_DealerLabelAdmin}
   Page Should Contain    ${AWD_ClaimTypeLabel}
   Page Should Contain    ${AWD_FreightClaimTypeValue}
   Page Should Contain    ${AWD_ClaimNumberLabel}
   Page Should Contain    ${AWD_ContactLabel}
   Page Should Contain    ${AWD_ContactValue}
   Page Should Contain    ${AWD_SubmitDateLabel}
   Page Should Contain    ${AWD_FreightClaimSubmitDateValue}
   Page Should Contain    ${AWD_ContactPhoneLabel}
   Page Should Contain    ${AWD_ClaimStatusLabel}
   Page Should Contain    ${AWD_ClaimStatusValue}
   Page Should Contain    ${AWD_WarrantyAdministrationHeader}
   Page Should Contain    ${AWD_AdministratorLoginlabel}
   Page Should Contain    ${AWD_AdministratorLoginValue}
   Page Should Contain    ${AWD_ReviewedClaimLabel}
   Page Should Contain    ${AWD_FreightReviewedValue}
   Page Should Contain    ${AWD_NextReviewerlabel}
   Page Should Contain    ${AWD_NextReviewerValue}
   Page Should Contain    ${AWD_CurrentBlockLabel}
   Page Should Contain    ${AWD_CurrentBlockValue1}
   Page Should Contain    ${AWD_CurrentBlockValue2}
   Page Should Contain    ${AWD_CurrentBlockValue3}
   ${ExpectedPolicyCodecount}=  set variable  ${AWD_PolicycodelabelCount}
   ${PolicyCodeCount}=  Get Element Count  ${AWD_PolicyCodeLabel}
   Should Be Equal As Numbers    ${ExpectedPolicyCodecount}    ${PolicyCodeCount}
   Page Should Contain    ${AWD_FreightPolicyCodevalue}
   ${ExpectedFailureCodecount}=  Set Variable  ${AWD_failurecodelabelCount}
   ${failureCodeCount}=  Get Element Count    ${AWD_FailureCodeLabel}
   Should Be Equal As Numbers    ${ExpectedFailureCodecount}    ${failureCodeCount}
   Page Should Contain    ${AWD_FailureCodeValue}
   Page Should Contain    ${AWD_CurrentDuedateLabel}
   Page Should Contain    ${AWD_FreightCurrentDuedateValue}
   Page Should Contain Element    ${AWD_BackButton}
   Page Should Contain Element   ${AWD_PrintButton}
   Page Should Contain Element  ${AWD_EditImagesButton}
   Page Should Contain  ${AWD_ReviewHeader}
   Page Should Contain  ${AWD_DescriptionOfFailureLabel}
   Page Should Contain Element    ${AWD_DecriptionOfFailureField}
   Page Should Contain    ${AWD_LindeInternalNoteslabel}
   Page Should Contain Element    ${AWD_LindeInternalNotesField}
   Page Should Contain Element    ${AWD_FailureCdeField}
   Page Should Contain Element    ${AWD_PolicycodeField}
   Page Should Contain    ${AWD_BillingBlockLabel}
   Page Should Contain Element    ${AWD_BillingBlockDropDown}
   Page Should Contain    ${AWD_BillingDueDatelabel}
   Page Should Contain Element    ${AWD_BillingDueDateField}
   Page Should Contain  ${AWD_UpdateClaimLabel}
   Page Should Contain Element    ${AWD_UpdateButton}
   Page Should Contain Element    ${AWD_ApproveButton}
   Page Should Contain  ${AWD_MessageLabel}
   Page Should Contain Element    ${AWD_ViewMessageButton}
   Page Should Contain Element    ${AWD_NewMessageButton}
   Page Should Contain Element    ${AWD_NextReviewerDropdown}
   Page Should Contain Element    ${AWD_NextReviewerDropdownUpdateButton}
   Page Should Contain    ${AWD_ClaimProcessingMessageLabel}
   Page Should Contain    ${AWD_ClaimLineItemSection}
   Page Should Contain Element    ${AWD_LineItemUpdate}



