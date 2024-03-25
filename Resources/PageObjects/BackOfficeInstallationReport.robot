*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#Admin Installation page navigation
${AI_Link} =  //a[normalize-space()='Installation Report']

#Admin Serial Number search
${AIS_SerialNumberField} =  //input[@id='truckSerialNo']
${AIS_SerialNumberInput} =  W41152C06676
${AIS_SearchReportsButton} =  //button[normalize-space()='Search Reports']
${AIS_SerialNumberSearchResult} =  //tbody/tr[1]/td[2]

#Dealer number search
${AIS_DealerNumberField} =  //input[@id='dealerNo']
${AIS_DealerNumberInput} =  53464
${AIS_DealerNumberSearchResult} =  //tbody/tr[1]/td[3]

#Status Search
${AIS_StatusDropdown} =  //select[@id='installReportStatus']
${AIS_PendingReport} =  //option[@value='pending']
${AIS_PendingStatusSearchResult} =  Submitted
${AIS_SubmittedReport} =  //option[@value='submitted']
${AIS_SubmittedStatusSearchResult} =  Submitted
${AIS_ReviewedReport} =  //option[@value='reviewed']
${AIS_ReviewedStatusSearchResult} =  Reviewed
${AIS_ApprovedReport} =  //option[@value='approved']
${AIS_ApprovedStatusSearchResult} =  Approved
${AIS_StatusSearchResult} =  //tbody/tr[1]/td[6]

#Search
${AIS_ItemColumn} =  Item
${AIS_TruckSerialHeader} =  //th[@data-sort='TruckSerialNumber']
${AIS_DealerHeader} =  //th[@data-sort='DealerNumber']
${AIS_CustmernameHeader} =  //th[@data-sort='CustomerName']
${AIS_DealerNameHeader} =  //th[@data-sort='DealerName']
${AIS_ReportStatusHeader} =  //th[@data-sort='Status']
${AIS_ReportDateHeader} =  //th[@data-sort='InstallationReportDate']
${AIS_InstalldateHeader} =  //th[@data-sort='InstallationDate']

#Sorting Values
${AIS_TruckSerialHeaderAscField} =  //tbody[@id='installReportResultBody']//tr[1]//td[2]
${AIS_TruckSerialHeaderAsc} =  	130040351
${AIS_DealerHeaderAscField} =  //tbody[@id='installReportResultBody']//tr[1]//td[3]
${AIS_DealerHeaderAsc} =  50123
${AIS_CustomernameAscField} =  //tbody[@id='installReportResultBody']//tr[1]//td[4]
${AIS_CustomernameHeaderAsc} =  	1000WORLD STREET
${AIS_DealernameAscField} =  //tbody[@id='installReportResultBody']//tr[1]//td[5]
${AIS_DealerNameHeaderAsc} =  ${EMPTY}
${AIS_ReportStatusAscField} =  //tbody[@id='installReportResultBody']//tr[1]//td[6]
${AIS_ReportStatusHeaderAsc} =  Approved
${AIS_ReportDateHeaderAsc} =  05/30/13
${AIS_ReportDateHeaderAscField} =  //tbody[@id='installReportResultBody']//tr[1]//td[7]
${AIS_InstalldateHeaderFirstRow} =  //tbody[@id='installReportResultBody']//tr[1]//td[8]
${AIS_InstalldateHeaderAsc} =  05/30/13
#LazyLoad
${AIS_serialno_15} =  //td[normalize-space()='15']
${AIS_serialno_30} =  //td[normalize-space()='30']
${AIS_serialno_31} =  //td[normalize-space()='31']

#Installation Submit
${TIN_NewTruckInstallationLink} =  //a[@class='new-install-report mtb-20']
${TIN_ElectricFormNo} =   007
${TIN_ICFormNo} =  008
${TIN_ElectricButton} =  //label[normalize-space()='Electric']
${TIN_ICButton} =   //label[normalize-space()='Internal Combustion']
${TIN_FormNumberField} =  //input[@id='InstallationCheckForm_InstallationFormNumber']
${TIN_NewSerialforElectric} =  W4X360Z01375
${TIN_NewSerialForIC} =  W4X360Z01404
${TIN_SerialNumberField} =  //input[@id='InstallationCheckForm_TruckSerialNumber']
${TIN_SubmitButton} =  //button[normalize-space()='Submit']
${TIN_SoldButton} =  //label[normalize-space()='Sold']
${TIN_InstallDateField} =  //input[@id='InstallationForm_InstallationDate']
${TIN_InstallDateValue} =  01/24/2024
${TIN_CustomerNameField01} =  //input[@id='InstallationForm_BusinessName']
${TIN_CustomerNameField01Value} =  Marichamy
${TIN_StreetNameField01} =  //input[@name='InstallationForm_Street']
${TIN_StreetNameField01Value} =   15205 North Kierland Blvd. Suite 100
${TIN_CountyCodeField01} =  //input[@id='InstallationForm_CountyCode']
${TIN_CountyCodeField01Value} =  6666
${TIN_CityField01} =  //input[@name='InstallationForm_City']
${TIN_CityField01Value} =  Scottsdale
${TIN_StateField01} =  //input[@name='InstallationForm_State']
${TIN_StateField01Value} =  AZ
${TIN_ZIPField01} =  //input[@name='InstallationForm_Zipcode']
${TIN_ZIPField01Value} =  85254
${TIN_CountryField01} =  //select[@name='InstallationForm_Country']
${TIN_CountryField01Value} =  //option[@value='US']
${TIN_SICField01} =  //input[@id='InstallationForm_SIC']
${TIN_SICField01Value} =  5555
${TIN_CustomerContactNameField} =  //input[@name='InstallationForm_CustomerContactName']
${TIN_CustomerContactNameFieldValue} =  Marichamy
${TIN_CustmerJobTitleField} =  //input[@name='InstallationForm_CustomerJobTitle']
${TIN_CustmerJobTitleFieldValue} =  QA
${TIN_PhoneField} =  //input[@id='InstallationForm_CustomerPhoneNumber']
${TIN_PhoneFieldValue} =  9876785671
${TIN_EmailField} =  //input[@name='InstallationForm_CustomerEmail']
${TIN_EmailFieldValue} =  mar.g10test@gmail.com
${TIN_SameAsCheckBox} =  //input[@name='sameOrderAddress']
${TIN_NoteField} =  //textarea[@name='InstallationForm_Notes']
${TIN_NoteValue} =  Test Note
${TIN_DisclaimerCheckBox} =  //input[@id='disclaimer-agree']
${TIN_Submit2Button} =   //button[@name='apply']
${TIN_SuccessMessage} =  The report has been successfully submitted
*** Keywords ***
Go to Admin Installation report page
  Click Element    ${AI_Link}

Verify the serial number search in admin installation page
  Input Text    ${AIS_SerialNumberField}    ${AIS_SerialNumberInput}
  Click Element    ${AIS_SearchReportsButton}
  ${expectedSerial}  Set Variable  ${AIS_SerialNumberInput}
  ${ActualSerial} =  Get Text    ${AIS_SerialNumberSearchResult}
  Should Be Equal As Strings    ${expectedSerial}    ${ActualSerial}
  Clear Element Text    ${AIS_SerialNumberField}

Verify the Dealer number search in admin installation page
  Input Text    ${AIS_DealerNumberField}    ${AIS_DealerNumberInput}
  Click Element    ${AIS_SearchReportsButton}
  ${expectedDealer}  Set Variable  ${AIS_DealerNumberInput}
  ${ActualDealer} =  Get Text    ${AIS_DealerNumberSearchResult}
  Should Be Equal As Strings    ${expectedDealer}    ${ActualDealer}
  Clear Element Text    ${AIS_DealerNumberField}

All field search
  Input Text    ${AIS_SerialNumberField}    ${AIS_SerialNumberInput}
  Input Text    ${AIS_DealerNumberField}    ${AIS_DealerNumberInput}
  Click Element    ${AIS_StatusDropdown}
  Sleep    2s
  Click Element    ${AIS_ApprovedReport}
  Click Element    ${AIS_SearchReportsButton}
  Page Should Contain  ${AIS_ApprovedStatusSearchResult}
  Clear Element Text    ${AIS_SerialNumberField}
  Clear Element Text    ${AIS_DealerNumberField}
Verify the truck status search in the installation report page
  Click Element    ${AIS_StatusDropdown}
  Sleep    1s
  Click Element    ${AIS_PendingReport}
  Sleep    1s
  Click Element    ${AIS_SearchReportsButton}
  Sleep    2s
  ${expectedStatus}  Set Variable  ${AIS_PendingStatusSearchResult}
  ${ActualStatus} =  Get Text    ${AIS_StatusSearchResult}
  Should Be Equal As Strings    ${expectedStatus}    ${ActualStatus}
  Click Element    ${AIS_StatusDropdown}
  Sleep    2s
  Click Element    ${AIS_SubmittedReport}
  Sleep    1s
  Click Element    ${AIS_SearchReportsButton}
  Sleep    3s
  ${expectedStatus1}  Set Variable  ${AIS_SubmittedStatusSearchResult}
  ${ActualStatus1} =  Get Text    ${AIS_StatusSearchResult}
  Should Be Equal As Strings    ${expectedStatus1}    ${ActualStatus1}
  Click Element    ${AIS_StatusDropdown}
  Sleep    2s
  Click Element    ${AIS_ReviewedReport}
  Sleep    1s
  Click Element    ${AIS_SearchReportsButton}
  Sleep    3s
  ${expectedStatus3}  Set Variable  ${AIS_ReviewedStatusSearchResult}
  ${ActualStatus3} =  Get Text    ${AIS_StatusSearchResult}
  Should Be Equal As Strings    ${expectedStatus3}    ${ActualStatus3}
  Click Element    ${AIS_StatusDropdown}
  Sleep    2s
  Click Element    ${AIS_ApprovedReport}
  Sleep    1s
  Click Element    ${AIS_SearchReportsButton}
  Sleep    3s
  ${expectedStatus4}  Set Variable  ${AIS_ApprovedStatusSearchResult}
  ${ActualStatus4} =  Get Text    ${AIS_StatusSearchResult}
  Should Be Equal As Strings    ${expectedStatus4}    ${ActualStatus4}


Verify the bo Installation report sorting
  Click Element    ${AIS_TruckSerialHeader}
   Sleep    2s
  ${actual01} =  Get Text    ${AIS_TruckSerialHeaderAscField}
  ${ActualOriginal01}=  Evaluate    "${Actual01}".strip()
  Sleep    1s
  Should Be Equal As Strings    ${AIS_TruckSerialHeaderAsc}    ${ActualOriginal01}
  Click Element    ${AIS_TruckSerialHeader}
  Sleep    2s
  Click Element    ${AIS_DealerHeader}
  Sleep    1s
   ${actual02} =  Get Text    ${AIS_DealerHeaderAscField}
  ${ActualOriginal02}=  Evaluate    "${Actual02}".strip()
  Sleep    1s
  Should Be Equal As Strings    ${AIS_DealerHeaderAsc}    ${ActualOriginal02}
  Click Element    ${AIS_DealerHeader}
  Sleep    2s
  Click Element    ${AIS_CustmernameHeader}
  Sleep    1s
  ${actual03} =  Get Text    ${AIS_CustomernameAscField}
  ${ActualOriginal03}=  Evaluate    "${Actual03}".strip()
  Sleep    1s
  Should Be Equal As Strings    ${AIS_CustomernameHeaderAsc}    ${ActualOriginal03}
  Click Element     ${AIS_CustmernameHeader}
  Sleep    2s
  Click Element    ${AIS_DealerNameHeader}
  Sleep    1s
  ${actual04} =  Get Text    ${AIS_DealernameAscField}
  ${ActualOriginal04}=  Evaluate    "${Actual04}".strip()
  Sleep    1s
  Should Be Equal As Strings    ${EMPTY}    ${ActualOriginal04}
  Click Element    ${AIS_DealernameHeader}
  Sleep    2s
  Click Element    ${AIS_ReportStatusHeader}
  Sleep    1s
  ${actual05} =  Get Text    ${AIS_ReportStatusAscField}
  ${ActualOriginal05}=  Evaluate    "${Actual05}".strip()
  Sleep    1s
  Should Be Equal As Strings    ${AIS_ReportStatusHeaderAsc}    ${ActualOriginal05}
  Click Element    ${AIS_ReportStatusHeader}
  Sleep    2s
  Click Element    ${AIS_ReportDateHeader}
  Sleep    1s
  ${actual06} =  Get Text    ${AIS_ReportDateHeaderAscField}
  ${ActualOriginal06}=  Evaluate    "${Actual06}".strip()
  Sleep    1s
  Should Be Equal As Strings    ${AIS_ReportDateHeaderAsc}    ${ActualOriginal06}
  Sleep    1s
  Click Element    ${AIS_ReportDateHeader}
  Sleep    2s
  Click Element    ${AIS_InstalldateHeader}
  Sleep    2s
  ${actualvalue07} =  Get Text    ${AIS_InstalldateHeaderFirstRow}
  Should Be Equal As Strings    ${actual_value07}    ${AIS_InstalldateHeaderAsc}
  Sleep    2s
  Click Element    ${AIS_ReportDateHeader}

Verify the Admin installation lazy load
  Execute JavaScript    window.scrollBy(0,200)
  sleep    2s
  page should contain element    ${AIS_serialno_15}
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollTop=400;
  sleep    2s
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollTop=900;
  Sleep    2s
  page should contain element    ${AIS_serialno_30}
  page should not contain element    ${AIS_serialno_31}

