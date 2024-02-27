*** Settings ***
Library    SeleniumLibrary
Library  String
*** Variables ***
#Search criteria
${RT_SearchButton} =  //button[normalize-space()='Search Returns']
${RT_PartReturn_field} =  //input[@id='returnsSearchOrderNo']
${RT_PartReturn_Value} =  60056005
${RT_PartReturnSerchResultRow} =  //tbody[@id='ReturnsSearchResultBody']//tr[1]//td[2]
${RT_ClearSearch} =  //button[@id='returnsSearchClear']
${RT_YourReference_field} =  //input[@id='returnsSearchPONumber']
${RT_YourReference_Value} =  45370
${RT_RequestDateRange_Fromfield} =  //input[@id='DateRangeStart']
${RT_RequestDateRange_Tofield} =  //input[@id='DateRangeEnd']
${RT_FromDate} =  07/13/2023
${RT_TODate} =  01/08/2024
${DateRangeReturnNumber} =  60055948
${RT_RequestTypeDropDown} =  //select[@name='OrderType']
${RT_Type_PartReturn} =  //option[.='Part Return']
${RT_Type_PartReturnRequestTypeValue} =  Part Return
${RT_Type_PartReturnCredit} =  //option[.='Part Return Credit']
${RT_Type_PartReturnCreditValue} =  Part Return Credit
${RT_ReturnStatus_Dropdown} =  //select[@name='OrderStatus']
${RT_Status_Open} =  //option[.='Open']
${RT_Status_OpenValue} =  Open
${RT_Status_Completed} =  //option[.='Completed']
${RT_Part_Field} =  //input[@name='ProductIdentifier_1']
${RT_Part_Value} =  3903503841
${RT_Part_SearchResultvalue} =  60055994
${RT_PartSearch_Result} =  60056006

#Sorting verify cation elements

${RT_PartReturnHeader} =  //th[@data-sort='DocumentNo']
${RT_PartReturnFirstRow} =  //tbody[@id='ReturnsSearchResultBody']//tr[1]//td[2]
${RT_PartReturnAscValue} =  60052445
${RT_YourReferenceHeader} =  //th[@data-sort='PONumber']
${RT_YourreferenceFirstRow} =   //tbody[@id='ReturnsSearchResultBody']//tr[1]//td[3]
${RT_YourReferenceAscValue} =  16277
${RT_DateHeader} =  //th[@data-sort='CreationDate']
${RT_DateFirstRow} =   //tbody[@id='ReturnsSearchResultBody']//tr[1]//td[4]
${RT_DateAscValue} =  	02/28/22
${RT_RequestTypeHeader} =  //th[@data-sort='OrderType']
${RT_RequestTypeFirstRow} =   //tbody[@id='ReturnsSearchResultBody']//tr[1]//td[5]
${RT_RequestTypeAscValue} =  	Annual Return
${RT_TotalAmountHeader} =  //th[@data-sort='GrandTotalGrossPricePCValue']
${RT_TotalAmountFirstRow} =   //tbody[@id='ReturnsSearchResultBody']//tr[1]//td[6]
${RT_TotalAmountAscValue} =  	$ 0.00
${RT_ContactNameHeader} =  //th[@data-sort='OriginalBuyerName']
${RT_ContactNameFirstRow} =   //tbody[@id='ReturnsSearchResultBody']//tr[1]//td[7]
${RT_ContactNameAscValue} =  	* Darryl Wiltzen*
${RT_StatusHeader} =  //th[@data-sort='Status']
${RT_StatusFirstRow} =   //tbody[@id='ReturnsSearchResultBody']//tr[1]//td[8]
${RT_StatusAscValue} =  Being Processed

#LazyLoad
${RT_serialno_10} =  //table[@id='ReturnSearchResult']/tbody/tr[11]/td[1]
${RT_serialno_20} =  //table[@id='ReturnSearchResult']/tbody/tr[21]/td[1]
${RT_serialno_21} =  //table[@id='ReturnSearchResult']/tbody/tr[22]/td[1]
${RT_serialno_11} =  //table[@id='ReturnSearchResult']/tbody/tr[12]/td[1]

#New Return form
${RT_NewReturnLink} =  //a[@class='new-return-req bo-link']
${RT_NewReturnformHeading} =  Search for Invoices
${RT_N_EnterInvoiceHeader} =  Enter Invoice #
${RT_N_EnterInvoiceNumberLabel} =  Invoice Number (8 digit number - 9xxxxxxxxx):
${RT_N_EnterInvoiceNumberField} =  //input[@name='InvoiceNo']
${RT_N_ORTXT} =  -OR-
${RT_N_SearchByPurchaseOrderSectionHeader} =  Search by Purchase Order #
${RT_N_PurchaseOrderLabel} =  Purchase Order #
${RT_N_PurchaseOrderfield} =  //input[@name='PONumber']
${RT_N_Searchbypartheader} =  Search by Part #
${RT_N_PartLabel} =  Part #
${RT_N_PartField} =  //input[@name='ProductIdentifier_1']
${RT_N_ResetButton} =  //button[@id='returnInvoiceSearchReset']
${RT_N_ProceedButton} =  //button[normalize-space()='Proceed']
${RT_N_CancelButton} =  //a[@class='btn btn-primary']
${RT_N_InvoiceNumber} =  91462960
${RT_N_LineItemQty} =  //input[@name='Qty_1']
${RT_N_UpdateButton} =  //input[@name='Update']
${RT_N_SubmitButton} =  //input[@name='Confirm']
${RT_N_ConfirmSubmit} =  //input[@name='Submit']
${RT_N_ConfirmationHeading} =  Returns - Confirmation
${RT_N_ConfirmationMessage} =  Your request has been received !
#New ReturnForm submit page General values
${RT_NS_ReturnsHeader} =  Returns
${RT_NS_CreatepartsreturnSectionHeader} =  Create Parts Return
${RT_NS_InvoiceLabel} =  Invoice #:
${RT_NS_InvoiceValue} =  91462960
${RT_NS_BillingDateLabel} =  Billing Date:
${RT_NS_BillingDateValue} =  06/01/23
${RT_NS_OrderLabel} =  Order #:
${RT_NS_OrderValue} =  2626108
${RT_NS_ReasonContentsHTML} =  //div[@class='reason-info col-md-8']
${RT_NS_PartreturnReasoncodeLabel} =  Parts Returns Reason Code
${RT_NS_ReturnReasonLabel} =  Return Reason :
${RT_NS_NotefieldLabel} =  Note (Required input)
${RT_N_Note} =  //textarea[@name='ReturnReasonText']
${RT_N_NoteValue} =  Test Notes
${RTN_ReturnReasonButton} =  //a[normalize-space()='Change Reason']
${RTN_EmailLabel} =  Email Address:
${RT_N_Email} =  //input[@id='returnemailid']
${RT_N_EmailValue} =  marig10test@gmail.com
${RT_NS_PartsReturnHeader} =  Parts Returns
${RT_NS_YourReferenceLabel} =  Your Reference #:
${RT_NS_YourReferenceValue}=  53877
${RT_NSL_ItemColumn} =  Item #
${RT_NSL_PartColumn} =  Part #
${RT_NSL_PartNameColumn} =  Part Name
${RT_NSL_CatColumn} =  Cat
${RT_NSL_QuantityColumn} =  Quantity
${RT_NSL_PriceperUnitColumn} =  Price per Unit
${RT_NSL_UnitColumn} =  Unit
${RT_NSL_PriceColumn} =  Price
${RT_NSL_BackButton} =  //a[normalize-space()='Back']
${RT_NSL_ResetButton} =  //a[@class='btn btn-primary return-reset-button']
${RT_NSL_UpdateButton} =  //input[@name='Update']
${RT_NSL_ProceedButton} =  //input[@name='Confirm']
${RT_NSL_PartreturnTotalLabel} =  Parts Returns Total:
${RT_NS_ReasonSelectButton} =  //input[@id='selectreason']
#Price Billing error return reason
${RTN_PriceBillingErrorReasonButton} =  //label[normalize-space()='Pricing / Billing Error']
${RTN_PriceBillingErrorMessage} =  Pricing / Billing Error
${RTN_PB_EditableQuantityfield} =  //input[@name='Qty_1']
#Dealer Order In error return reason
${RTN_DealerOrderInErrorReasonButton} =  //label[normalize-space()='Dealer Ordered in Error']
${RTN_DealerOrderInErrorMessage} =  Dealer Ordered in Error
${RTN_DO_EditableQuantityfield} =  //input[@name='Qty_1']
${RTN_DO_RestockingFeeText} =  Re-stocking Fee
${RTN_DO_PriceLimitMessage} =  Price below $ 25 per piece.
#Incorrectly Specified return reason
${RTN_IncorrectlySpecifiedReasonButton} =  //label[text()='Incorrectly Specified']
${RTN_IncorrectlySpecifiedMessage} =  Incorrectly Specified
${RTN_IS_EditableQuantityfield} =  //input[@name='Qty_1']
${RTN_IS_FrieghtText} =  Freight
#Documentation Manual Incorrect
${RTN_DocumentationManualIncorrectReasonButton} =  //label[text()='Documentation / Manual Incorrect']
${RTN_DocumentationManualIncorrectMessage} =  Documentation / Manual Incorrect
${RTN_DMI_EditableQuantityfield} =  //input[@name='Qty_1']
${RTN_DMI_FrieghtText} =  Freight
#Short Shipped Incorrect
${RTN_ShortShippedReasonButton} =  //label[text()='Short Shipped']
${RTN_ShortShippedMessage} =  Short Shipped
${RTN_SS_EditableQuantityfield} =  //input[@name='Qty_1']
#Duplicate Shipmment
${RTN_DuplicateShipmentReasonButton} =  //label[text()='Duplicate Shipment']
${RTN_DuplicateShipmentMessage} =  Duplicate Shipment
${RTN_DS_EditableQuantityfield} =  //input[@name='Qty_1']
#MisMarked Inventory
${RTN_MismarkedInventoryReasonButton} =  //label[text()='Mismarked Inventory']
${RTN_MismarkedInventoryMessage} =  Mismarked Inventory
${RTN_MMI_EditableQuantityfield} =  //input[@name='Qty_1']
#Damaged Transit by Carrier
${RTN_DamagedTransitByCarrierReasonButton} =  //label[text()='Damaged in Transit by Carrier']
${RTN_DamagedTransitByCarrierMessage} =  Damaged in Transit by Carrier
${RTN_DTC_EditableQuantityfield} =  //input[@name='Qty_1']
#Damaged in Transit b/o Packaging
${RTN_DamagedTransitPackagingReasonButton} =  //label[text()='Damaged in Transit b/o Packaging']
${RTN_DamagedTransitPackagingMessage} =  Damaged in Transit b/o Packaging
${RTN_DTB_EditableQuantityfield} =  //input[@name='Qty_1']
#Lost in Transit
${RTN_LostinTransitReasonButton} =  //label[text()='Lost in Transit']
${RTN_LostinTransitMessage} =  Lost in Transit
${RTN_LIT_EditableQuantityfield} =  //input[@name='Qty_1']
#Freight Overcharge
${RTN_FreightOverChargeReasonButton} =  //label[text()='Freight Overcharge']
${RTN_FreightOverChargeMessage} =  Freight Overcharge
${RTN_FOC_NonEditableQuantityMessage} =  0 (can not be changed)
${RTN_FOC_FrieghtText} =  Freight
#Damaged in Freight for Re-order
${RTN_FreightForReorderReasonButton} =  //label[text()='Freight for Re-order']
${RTN_FreightForReorderMessage} =  Freight for Re-order
${RTN_FFR_NonEditableQuantityMessage} =  0 (can not be changed)
${RTN_FFR_FrieghtText} =  Freight
#Freight for Return
${RTN_FreightForReturnReasonButton} =  //label[text()='Freight for Return']
${RTN_FreightForReturnMessage} =  Freight for Return
${RTN_FFRT_NonEditableQuantityMessage} =  0 (can not be changed)
${RTN_FFRT_FrieghtText} =  Freight
#CoreExchange
${RTN_CoreExchangeReasonButton} =  //label[text()='Core Exchange']
${RTN_CoreExchangeReturnMessage} =  Core Exchange
${RTN_CE_EditableQuantityfield} =  //input[@name='Qty_1']

*** Keywords ***
Returns Default search
    click element    ${RT_SearchButton}
    page should contain element    ${RT_serialno_10}


Part return search
    input text    ${RT_PartReturn_field}    ${RT_PartReturn_Value}
    click element    ${RT_SearchButton}
    ${ExpectedReturn}  Set Variable   ${RT_PartReturn_Value}
    ${ActualReturn} =  Get Text   ${RT_PartReturnSerchResultRow}
    Should Be Equal As Strings    ${ExpectedReturn}    ${ActualReturn}
    page should contain    ${RT_PartReturn_Value}
    click element  ${RT_ClearSearch}


Return your reference search
    input text    ${RT_YourReference_field}    ${RT_YourReference_Value}
    click element    ${RT_ClearSearch}
    page should contain    ${RT_YourReference_Value}
    Click Element    ${RT_ClearSearch}


Return Request date range
    input text    ${RT_RequestDateRange_Fromfield}    ${RT_FromDate}
    input text    ${RT_RequestDateRange_Tofield}    ${RT_ToDate}
    click element    ${RT_SearchButton}
    Sleep    3s
    Click Element    ${RT_PartReturnHeader}
    Sleep    3s
    page should contain    ${DateRangeReturnNumber}
    Sleep    1s
    click element    ${RT_ClearSearch}
    sleep    3s


Return Request Type Search
    Execute JavaScript    window.scrollTo(250,0)
    Wait Until Element Is Visible    ${RT_RequestTypeDropDown}
    click element    ${RT_RequestTypeDropDown}
    Wait Until Element Is Visible    ${RT_Type_PartReturn}
    click element    ${RT_Type_PartReturn}
    Wait Until Element Is Visible    ${RT_SearchButton}
    click element    ${RT_SearchButton}
    Wait Until Element Is Visible    ${RT_RequestTypeFirstRow}
    ${ExpectedReturnRequestType}  Set Variable   ${RT_Type_PartReturnRequestTypeValue}
    ${ActualReturnRequestType} =  Get Text   ${RT_RequestTypeFirstRow}
    Should Be Equal As Strings    ${ExpectedReturnRequestType}    ${ActualReturnRequestType}
    #page should contain    ${RT_PartReturn_Value}
    Wait Until Element Is Visible    ${RT_ClearSearch}
    click element    ${RT_ClearSearch}
    sleep    3s

Return status search
    click element    ${RT_ReturnStatus_Dropdown}
    click element    ${RT_Status_Open}
    click element    ${RT_SearchButton}
    sleep    5s
    page should contain    ${RT_Status_OpenValue}
    click element    ${RT_ClearSearch}
    sleep    3s

Return Part number search
    Wait Until Element Is Visible    ${RT_Part_Field}
    input text    ${RT_Part_Field}    ${RT_Part_Value}
    Wait Until Element Is Visible    ${RT_SearchButton}
    click element    ${RT_SearchButton}
    Wait Until Element Is Visible    ${RT_PartReturnHeader}
    Click Element    ${RT_PartReturnHeader}
    Wait Until Page Contains    ${RT_Part_SearchResultvalue}
    Page Should Contain    ${RT_Part_SearchResultvalue} 
    Wait Until Element Is Visible    ${RT_ClearSearch}
    click element    ${RT_ClearSearch}
    sleep    3s

Verify returns sorting
    Click Element    ${RT_SearchButton}
    Sleep    5s
    Click Element    ${RT_PartReturnHeader}
    Sleep    3s
    ${ExpectedPR}  Set Variable   ${RT_PartReturnAscValue}
    ${Actual} =  Get Text    ${RT_PartReturnFirstRow}
    Should Be Equal As Strings    ${ExpectedPR}    ${Actual}
    Click Element    ${RT_PartReturnHeader}
    Sleep    2s
    Click Element    ${RT_YourReferenceHeader}
    Sleep    3s
    ${ExpectedYR}  Set Variable   ${RT_YourReferenceAscValue}
    ${Actual01} =  Get Text    ${RT_YourreferenceFirstRow}
    ${ActualOriginal}=  Evaluate    "${Actual01}".strip()
    Should Be Equal As Strings    ${ExpectedYR}    ${ActualOriginal}
    Click Element    ${RT_YourReferenceHeader}
    Sleep    2s
    Click Element    ${RT_DateHeader}
    Sleep    3s
    ${ExpectedDH}  Set Variable   ${RT_DateAscValue}
    ${Actual02} =  Get Text    ${RT_DateFirstRow}
    Should Be Equal As Strings    ${ExpectedDH}    ${Actual02}
    Click Element    ${RT_DateHeader}
    Sleep    2s
    Click Element    ${RT_RequestTypeHeader}
    Sleep    2s
    ${ExpectedRTH}  Set Variable   ${RT_RequestTypeAscValue}
    ${Actual03} =  Get Text    ${RT_RequestTypeFirstRow}
    Should Be Equal As Strings    ${ExpectedRTH}    ${Actual03}
    Click Element    ${RT_RequestTypeHeader}
    Sleep    2s
    ${ExpectedTAH}  Set Variable   ${RT_TotalAmountAscValue}
    Click Element    ${RT_TotalAmountHeader}
    Sleep    2s
    ${Actual04} =  Get Text    ${RT_TotalAmountFirstRow}
    Should Be Equal As Strings    ${ExpectedTAH}    ${Actual04}
    Click Element    ${RT_TotalAmountHeader}
    Sleep    2s
    Click Element    ${RT_contactNameHeader}
    Sleep    2s
    ${Expectedcn}  Set Variable   ${RT_contactNameAscValue}
    ${Actual05} =  Get Text    ${RT_contactNameFirstRow}
    ${ActualOriginal01}=  Evaluate    "${Actual05}".strip()
    Should Be Equal As Strings    ${Expectedcn}    ${ActualOriginal01}
    Sleep    2s
    Click Element    ${RT_contactNameHeader}
    Sleep    2s
    Click Element    ${RT_StatusHeader}
    Sleep    2s
    ${Expectedst}  Set Variable   ${RT_StatusAscValue}
    ${Actual06} =  Get Text    ${RT_StatusFirstRow}
    Should Be Equal As Strings    ${Expectedst}    ${Actual06}
    Sleep    2s
    Click Element    ${RT_StatusHeader}
Verify returns LazyLoad
    sleep    5s
    Execute JavaScript    window.scrollBy(0,300)
    sleep    5s
    page should contain element    ${RT_serialno_10}
    Execute Javascript   document.querySelector('.table-responsive.freeze-header.min-records').scrollTop = 100;
    page should not contain element    ${RT_serialno_11}
    Sleep    3s
    Execute Javascript   document.querySelector('.table-responsive.freeze-header.min-records').scrollTop = 800;
    page should contain element    ${RT_serialno_20}
    page should not contain element    ${RT_serialno_21}

Go to new returns
  Wait Until Element Is Visible    ${RT_NewReturnLink}
  Click Element    ${RT_NewReturnLink}

Verify the new return form information
   Page Should Contain    ${RT_N_EnterInvoiceHeader}
   Page Should Contain    ${RT_N_EnterInvoiceNumberLabel}
   Page Should Contain Textfield   ${RT_N_EnterInvoiceNumberField}
   Page Should Contain    ${RT_N_ORTXT}
   Page Should Contain    ${RT_N_SearchByPurchaseOrderSectionHeader}
   Page Should Contain    ${RT_N_PurchaseOrderLabel}
   Page Should Contain Textfield    ${RT_N_PurchaseOrderfield}
   Page Should Contain    ${RT_N_Searchbypartheader}
   Page Should Contain    ${RT_N_PartLabel}
   Page Should Contain Textfield    ${RT_N_PartField}
   Page Should Contain Element    ${RT_N_ResetButton}
   Page Should Contain Element    ${RT_N_ProceedButton}
   Page Should Contain Element    ${RT_N_CancelButton}
   
Submit new Test return
   Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_N_InvoiceNumber}
   Click Element    ${RT_N_ProceedButton}
   Input Text    ${RT_N_Note}    ${RT_N_NoteValue}
   Input Text    ${RT_N_Email}    ${RT_N_EmailValue}
   Clear Element Text    ${RT_N_LineItemQty}
   Input Text    ${RT_N_LineItemQty}    1
   Click Element    ${RT_N_UpdateButton}
   Click Element    ${RT_N_SubmitButton}

Verify pricebilling error reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_PriceBillingErrorReasonButton}
  Click Element    ${RTN_PriceBillingErrorReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    2s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_PriceBillingErrorMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should Contain Textfield    ${RTN_PB_EditableQuantityfield}
  Page Should Not Contain    ${RTN_DO_RestockingFeeText}
  Page Should Not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
  Page Should Contain Element    ${RT_NSL_BackButton}
  Page Should Contain Element    ${RT_NSL_ResetButton}
  Page Should Contain Element    ${RT_NSL_UpdateButton}
  Page Should Contain Element    ${RT_NSL_ProceedButton}

Verify Dealer Order in error reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Sleep    2s
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RTN_DealerOrderInErrorReasonButton}
  Sleep    2s
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    2s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_DealerOrderInErrorMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should Contain Textfield    ${RTN_DO_EditableQuantityfield}
  Page Should Contain    ${RTN_DO_RestockingFeeText}
  Page Should Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
  Page Should Contain Element    ${RT_NSL_BackButton}
  Page Should Contain Element    ${RT_NSL_ResetButton}
  Page Should Contain Element    ${RT_NSL_UpdateButton}
  Page Should Contain Element    ${RT_NSL_ProceedButton}

Verify Incorrectly Specified reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_IncorrectlySpecifiedReasonButton}  timeout=10s
  Click Element    ${RTN_IncorrectlySpecifiedReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    3s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_IncorrectlySpecifiedMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain    ${RTN_DO_RestockingFeeText}
  Page Should not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain Textfield   ${RTN_IS_EditableQuantityfield}
  Page Should Contain    ${RTN_IS_FrieghtText}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}

Verify Documentation/Manual Incorrect reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_DocumentationManualIncorrectReasonButton}
  Click Element    ${RTN_DocumentationManualIncorrectReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    2s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_DocumentationManualIncorrectMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain    ${RTN_DO_RestockingFeeText}
  Page Should not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain Textfield   ${RTN_IS_EditableQuantityfield}
  Page Should Contain    ${RTN_IS_FrieghtText}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}

Verify Short Shipped Incorrect reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_ShortShippedReasonButton}
  Click Element    ${RTN_ShortShippedReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    3s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Wait Until Element Is Visible    ${RT_NS_ReasonContentsHTML}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Wait Until Page Contains    ${RTN_ShortShippedMessage}
  Page Should Contain    ${RTN_ShortShippedMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain    ${RTN_DO_RestockingFeeText}
  Page Should not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain Textfield   ${RTN_IS_EditableQuantityfield}
  Page Should not Contain    ${RTN_IS_FrieghtText}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
Verify Duplicate Shipment reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_DuplicateShipmentReasonButton}
  Click Element    ${RTN_DuplicateShipmentReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Sleep    2s
  Page Should Contain    ${RTN_DuplicateShipmentMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain    ${RTN_DO_RestockingFeeText}
  Page Should not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain Textfield   ${RTN_IS_EditableQuantityfield}
  Page Should Contain    ${RTN_IS_FrieghtText}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
Verify Mismarked Inventory reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_MismarkedInventoryReasonButton}
  Click Element    ${RTN_MismarkedInventoryReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    2s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_MismarkedInventoryMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain    ${RTN_DO_RestockingFeeText}
  Page Should not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain Textfield   ${RTN_MMI_EditableQuantityfield}
  Page Should Contain    ${RTN_IS_FrieghtText}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
Verify Damaged in Transit by Carrier reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_DamagedTransitByCarrierReasonButton}
  Click Element    ${RTN_DamagedTransitByCarrierReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    2s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_DamagedTransitByCarrierMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should Contain Textfield    ${RTN_DTC_EditableQuantityfield}
  Page Should Not Contain    ${RTN_DO_RestockingFeeText}
  Page Should Not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
  Page Should Contain Element    ${RT_NSL_BackButton}
  Page Should Contain Element    ${RT_NSL_ResetButton}
  Page Should Contain Element    ${RT_NSL_UpdateButton}
  Page Should Contain Element    ${RT_NSL_ProceedButton}
Verify Damaged in Transit b/o Packaging reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_DamagedTransitPackagingReasonButton}
  Click Element    ${RTN_DamagedTransitPackagingReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    2s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_DamagedTransitPackagingMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain    ${RTN_DO_RestockingFeeText}
  Page Should not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain Textfield  ${RTN_DTB_EditableQuantityfield}
  Page Should Contain    ${RTN_IS_FrieghtText}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}

Verify Damaged in Lost in Transit reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_LostinTransitReasonButton}
  Click Element    ${RTN_LostinTransitReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    2s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_LostinTransitMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should Contain Textfield    ${RTN_LIT_EditableQuantityfield}
  Page Should Not Contain    ${RTN_DO_RestockingFeeText}
  Page Should Not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
  Page Should Contain    ${RTN_IS_FrieghtText}
  Page Should Contain Element    ${RT_NSL_BackButton}
  Page Should Contain Element    ${RT_NSL_ResetButton}
  Page Should Contain Element    ${RT_NSL_UpdateButton}
  Page Should Contain Element    ${RT_NSL_ProceedButton}
  
Verify Damaged in Freight Overcharge reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_FreightOverChargeReasonButton}
  Click Element    ${RTN_FreightOverChargeReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    3s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_FreightOverChargeMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain Textfield    ${RTN_LIT_EditableQuantityfield}
  Page Should Contain    ${RTN_FOC_NonEditableQuantityMessage}
  Page Should Contain    ${RTN_IS_FrieghtText}
  Page Should Not Contain    ${RTN_DO_RestockingFeeText}
  Page Should Not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
  Page Should Contain Element    ${RT_NSL_BackButton}
  Page Should Contain Element    ${RT_NSL_ResetButton}
  Page Should Contain Element    ${RT_NSL_UpdateButton}
  Page Should Contain Element    ${RT_NSL_ProceedButton}

Verify Damaged in Freight for Re-order reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_FreightForReorderReasonButton}
  Click Element    ${RTN_FreightForReorderReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Sleep    3s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_FreightForReorderMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain Textfield    ${RTN_LIT_EditableQuantityfield}
  Page Should Contain    ${RTN_FFR_NonEditableQuantityMessage}
  Page Should Contain    ${RTN_FFR_FrieghtText}
  Page Should Not Contain    ${RTN_DO_RestockingFeeText}
  Page Should Not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
  Page Should Contain Element    ${RT_NSL_BackButton}
  Page Should Contain Element    ${RT_NSL_ResetButton}
  Page Should Contain Element    ${RT_NSL_UpdateButton}
  Page Should Contain Element    ${RT_NSL_ProceedButton}

Verify in Freight for Return reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_FreightForReturnReasonButton}
  Click Element    ${RTN_FreightForReturnReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  sleep  2s
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_FreightForReturnMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should not Contain Textfield    ${RTN_LIT_EditableQuantityfield}
  Page Should Contain    ${RTN_FFRT_NonEditableQuantityMessage}
  Page Should Contain    ${RTN_FFRT_FrieghtText}
  Page Should Not Contain    ${RTN_DO_RestockingFeeText}
  Page Should Not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
  Page Should Contain Element    ${RT_NSL_BackButton}
  Page Should Contain Element    ${RT_NSL_ResetButton}
  Page Should Contain Element    ${RT_NSL_UpdateButton}
  Page Should Contain Element    ${RT_NSL_ProceedButton}
Verify in Core Exchange Return reason information
  Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_NS_InvoiceValue}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_N_ProceedButton}
  Click Element    ${RT_N_ProceedButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
  Click Element    ${RTN_ReturnReasonButton}
  Sleep    3s
  Wait Until Element Is Visible    ${RTN_CoreExchangeReasonButton}
  Click Element    ${RTN_CoreExchangeReasonButton}
  Sleep    2s
  Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
  Click Element    ${RT_NS_ReasonSelectButton}
  Wait Until Page Contains    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_ReturnsHeader}
  Page Should Contain    ${RT_NS_CreatepartsreturnSectionHeader}
  Page Should Contain    ${RT_NS_InvoiceLabel}
  Page Should Contain    ${RT_NS_InvoiceValue}
  Page Should Contain    ${RT_NS_BillingDateLabel}
  Page Should Contain    ${RT_NS_BillingDateValue}
  Page Should Contain    ${RT_NS_OrderLabel}
  Page Should Contain    ${RT_NS_OrderValue}
  Page Should Contain Element    ${RT_NS_ReasonContentsHTML}
  Page Should Contain    ${RT_NS_PartreturnReasoncodeLabel}
  Page Should Contain    ${RT_NS_ReturnReasonLabel}
  Page Should Contain    ${RTN_CoreExchangeReturnMessage}
  Page Should Contain    ${RT_NSL_ItemColumn}
  Page Should Contain    ${RT_NSL_PartColumn}
  Page Should Contain    ${RT_NSL_PartNameColumn}
  Page Should Contain    ${RT_NSL_CatColumn}
  Page Should Contain    ${RT_NSL_QuantityColumn}
  Page Should Contain    ${RT_NSL_PriceperUnitColumn}
  Page Should Contain    ${RT_NSL_UnitColumn}
  Page Should Contain    ${RT_NSL_PriceColumn}
  Page Should Contain Textfield    ${RTN_CE_EditableQuantityfield}
  Page Should Not Contain    ${RTN_DO_RestockingFeeText}
  Page Should Not Contain    ${RTN_DO_PriceLimitMessage}
  Page Should Contain    ${RT_NSL_PartreturnTotalLabel}
  Page Should Contain Element    ${RT_NSL_BackButton}
  Page Should Contain Element    ${RT_NSL_ResetButton}
  Page Should Contain Element    ${RT_NSL_UpdateButton}
  Page Should Contain Element    ${RT_NSL_ProceedButton}

Submit new price billing error return
   Input Text    ${RT_N_EnterInvoiceNumberField}    ${RT_N_InvoiceNumber}
   Sleep    2s
   Wait Until Element Is Visible    ${RT_N_ProceedButton}
   Click Element    ${RT_N_ProceedButton}
   Sleep    2s
   Wait Until Element Is Visible    ${RTN_ReturnReasonButton}
   Click Element    ${RTN_ReturnReasonButton}
   Sleep    3s
   Wait Until Element Is Visible    ${RTN_PriceBillingErrorReasonButton}
   Click Element    ${RTN_PriceBillingErrorReasonButton}
   Sleep    2s
   Wait Until Element Is Visible    ${RT_NS_ReasonSelectButton}
   Click Element    ${RT_NS_ReasonSelectButton}
   Sleep    2s
   Wait Until Element Is Visible    ${RT_N_Note}
   Input Text    ${RT_N_Note}    ${RT_N_NoteValue}
   Wait Until Element Is Visible    ${RT_N_Email}
   Input Text    ${RT_N_Email}    ${RT_N_EmailValue}
   Wait Until Element Is Visible    ${RT_N_LineItemQty}
   Clear Element Text    ${RT_N_LineItemQty}
   Wait Until Element Is Visible    ${RT_N_LineItemQty}
   Input Text    ${RT_N_LineItemQty}    1
   Wait Until Element Is Visible    ${RT_N_UpdateButton}
   Click Element    ${RT_N_UpdateButton}
   Wait Until Element Is Visible    ${RT_N_SubmitButton}
   Click Element    ${RT_N_SubmitButton}
   Wait Until Page Contains    ${RT_N_EmailValue}
   Page Should Contain    ${RT_N_EmailValue}
   Page Should Contain    ${RT_N_NoteValue}
   Page Should Contain    ${RTN_PriceBillingErrorMessage}
   Page Should Contain Element    ${RT_N_ConfirmSubmit}
   Page Should Contain Element    ${RT_N_UpdateButton}
   Wait Until Element Is Visible  ${RT_N_ConfirmSubmit}
   Click Element    ${RT_N_ConfirmSubmit}
   Wait Until Page Contains    ${RT_N_ConfirmationHeading}
   Page Should Contain    ${RT_N_ConfirmationHeading}
   Page Should Contain    ${RT_N_ConfirmationMessage}
