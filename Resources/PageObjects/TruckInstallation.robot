*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#Search
${TI_ReportStatusDropdown} =  //select[@name='InstallationSearchForm_InstallationStatus']
${TI_SavesStatusOption} =  //option[.='Saved']
${TI_PendingStatusOption} =  //option[.='Pending']
${TI_ApprovedStatusOption} =  //option[.='Approved']
${TI_DeniedStatusOption} =  //option[.='Denied']
${TI_SelectOption} =   //option[.='---Select---']
${TI_DealerActionRequiredButton} =  //button[@class='btn btn-primary btn-outline mt-10 dealer-action-btn ']
${TI_SearchReportsButton} =  //button[normalize-space()='Search Reports']
${TI_ItemColumn} =  Item
${TI_TruckSerialHeader} =  //th[@data-sort='TruckSerialNumber']
${TI_DealerHeader} =  //th[@data-sort='DealerNumber']
${TI_CustmernameHeader} =  //th[@data-sort='CustomerName']
${TI_DealerNameHeader} =  //th[@data-sort='DealerName']
${TI_ReportStatusHeader} =  //th[@data-sort='Status']
${TI_ReportDateHeader} =  //th[@data-sort='InstallationReportDate']
${TI_InstalldateHeader} =  //th[@data-sort='InstallationDate']
${TI_DealerActionReuiredIcon} =  //a[@class='floating-action-btn']//span[@class='glyphicon glyphicon-exclamation-sign']
#Sorting Values
${TI_TruckSerialHeaderAsc} =  512041008419
${TI_DealerHeaderAsc} =  53464
${TI_CustmernameHeaderAsc} =  123
${TI_DealerNameHeaderAsc} =  ELEVEX (Formerly Manutention Quebec)
${TI_ReportStatusHeaderAsc} =  Approved
${TI_ReportDateHeaderAsc} =  //tbody/tr[1]/td[7]
${TI_InstalldateHeaderFirstRow} =  //tbody[@id='installReportResultBody']//tr[1]//td[7]
${TI_InstalldateHeaderAsc} =  05/30/13
#LazyLoad
${FT_serialno_40} =  //td[normalize-space()='40']
${FT_serialno_80} =  //td[normalize-space()='80']
${FT_serialno_81} =  //td[normalize-space()='81']

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
Verify the report search criteria
  Click Element    ${TI_ReportStatusDropdown}
  Sleep    1s
  Click Element    ${TI_SavesStatusOption}
  Sleep    1s
  Click Element    ${TI_SearchReportsButton}
  Sleep    2s
  ${expectedresult}  Set Variable  Saved
  ${ActualResult} =  Get Text    //tbody/tr[1]/td[6]
  Should Be Equal As Strings    ${expectedresult}    ${ActualResult}
  Click Element    ${TI_ReportStatusDropdown}
  Sleep    1s
  Click Element    ${TI_PendingStatusOption}
  Sleep    1s
  Click Element    ${TI_SearchReportsButton}
  Sleep    2s
  ${expectedresult}  Set Variable  Pending
  ${ActualResult} =  Get Text    //tbody/tr[1]/td[6]
  Should Be Equal As Strings    ${expectedresult}    ${ActualResult}
  Click Element    ${TI_ReportStatusDropdown}
  Sleep    2s
  Click Element    ${TI_ApprovedStatusOption}
  Sleep    1s
  Click Element    ${TI_SearchReportsButton}
  Sleep    3s
  ${expectedresult}  Set Variable  Approved
  ${ActualResult} =  Get Text    //tbody/tr[1]/td[6]
  Should Be Equal As Strings    ${expectedresult}    ${ActualResult}
  Click Element    ${TI_ReportStatusDropdown}
  Sleep    1s
  Click Element    ${TI_DeniedStatusOption}
  Sleep    1s
  Click Element    ${TI_SearchReportsButton}
  Sleep    2s
  ${expectedresult}  Set Variable  Denied
  ${ActualResult} =  Get Text    //tbody/tr[1]/td[6]
  Click Element    ${TI_DealerActionRequiredButton}
  Click Element    ${TI_SearchReportsButton}
  Sleep    2s
  Page Should Contain Element    ${TI_DealerActionReuiredIcon}
  
Verify the sorting in the truck insatallation page
  Click Element    ${TI_TruckSerialHeader}
  Sleep    1s
  Page Should Contain    ${TI_TruckSerialHeaderAsc}
  Click Element    ${TI_TruckSerialHeader}
  Sleep    2s
  Click Element    ${TI_DealerHeader}
  Sleep    1s
  Page Should Contain    ${TI_DealerHeaderAsc}
  Click Element    ${TI_DealerHeader}
  Sleep    2s
  Click Element    ${TI_CustmernameHeader}
  Sleep    1s
  Page Should Contain    ${TI_CustmernameHeaderAsc}
  Click Element     ${TI_CustmernameHeader}
  Sleep    2s
  Click Element    ${TI_DealerNameHeader}
  Sleep    1s
  Page Should Contain    ${TI_DealernameHeaderAsc}
  Click Element    ${TI_DealernameHeader}
  Sleep    2s
  Click Element    ${TI_ReportStatusHeader}
  Sleep    1s
  Page Should Contain    ${TI_ReportStatusHeaderAsc}
  Click Element    ${TI_ReportStatusHeader}
  Sleep    2s
  Click Element    ${TI_ReportDateHeader}
  Sleep    1s
  ${actualvalue} =  Get Text    ${TI_ReportDateHeaderAsc}
  Should Be Equal As Strings    ${actual_value}    ${EMPTY}
  Click Element    ${TI_ReportDateHeader}
  Sleep    2s
  Click Element    ${TI_InstalldateHeader}
  Sleep    2s
  ${actualvalue01} =  Get Text    ${TI_InstalldateHeaderFirstRow}
  Should Be Equal As Strings    ${actual_value01}    ${TI_InstalldateHeaderAsc}
  Sleep    2s
  Click Element    ${TI_ReportDateHeader}

Verify the Search installation lazy load
  Execute JavaScript    window.scrollBy(0,400)
  sleep    5s
  page should contain element    ${FT_serialno_40}
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollTop=2500;
  sleep    5s
  Execute Javascript   document.querySelector('.table-responsive.freeze-header').scrollTop=3200;
  Sleep    3s
  page should contain element    ${FT_serialno_80}
  page should not contain element    ${FT_serialno_81}

Submit the new electric truck installation
  Click Element  ${TIN_NewTruckInstallationLink}
  Input Text    ${TIN_FormNumberField}    ${TIN_ElectricFormNo}
  Click Element    ${TIN_ElectricButton}
  Input Text    ${TIN_SerialNumberField}    ${TIN_NewSerialforElectric}
  Click Element    ${TIN_SubmitButton}
  Sleep    2s
  Click Element    ${TIN_InstallDateField}
  Input Text    ${TIN_InstallDateField}    ${TIN_InstallDateValue}
  Press Keys    ${TIN_InstallDateField}    ENTER
  Sleep    2s
  Click Element    ${TIN_SoldButton}
  Sleep    2s
  Input Text    ${TIN_CustomerNameField01}    ${TIN_CustomerNameField01Value}
  Input Text    ${TIN_StreetNameField01}    ${TIN_StreetNameField01Value}
  Input Text    ${TIN_CountyCodeField01}    ${TIN_CountyCodeField01Value}
  Input Text    ${TIN_CityField01}    ${TIN_CityField01Value}
  Input Text    ${TIN_StateField01}    ${TIN_StateField01Value}
  Input Text    ${TIN_ZIPField01}    ${TIN_ZIPField01Value}
  Click Element    ${TIN_CountryField01}
  Sleep    2s
  Click Element    ${TIN_CountryField01Value}
  Input Text    ${TIN_SICField01}    ${TIN_SICField01Value}
  Input Text    ${TIN_CustomerContactNameField}    ${TIN_CustomerContactNameFieldValue}
  Input Text    ${TIN_CustmerJobTitleField}    ${TIN_CustmerJobTitleFieldValue}
  Input Text    ${TIN_PhoneField}    ${TIN_PhoneFieldValue}
  Input Text    ${TIN_EmailField}    ${TIN_EmailFieldValue}
  Click Element    ${TIN_SameAsCheckBox}
  Sleep    2s
  Input Text    ${TIN_NoteField}    ${TIN_NoteValue}
  Click Element    ${TIN_DisclaimerCheckBox}
  Sleep    2s
  Click Element    ${TIN_Submit2Button}
  Sleep    2s
  Page Should Contain    ${TIN_SuccessMessage}

Submit the new IC truck installation
  Click Element  ${TIN_NewTruckInstallationLink}
  Input Text    ${TIN_FormNumberField}    ${TIN_ICFormNo}
  Click Element    ${TIN_ICButton}
  Input Text    ${TIN_SerialNumberField}    ${TIN_NewSerialforIC}
  Click Element    ${TIN_SubmitButton}
  Sleep    2s
  Click Element    ${TIN_InstallDateField}
  Input Text    ${TIN_InstallDateField}    ${TIN_InstallDateValue}
  Press Keys    ${TIN_InstallDateField}    ENTER
  Sleep    2s
  Click Element    ${TIN_SoldButton}
  Sleep    2s
  Input Text    ${TIN_CustomerNameField01}    ${TIN_CustomerNameField01Value}
  Input Text    ${TIN_StreetNameField01}    ${TIN_StreetNameField01Value}
  Input Text    ${TIN_CountyCodeField01}    ${TIN_CountyCodeField01Value}
  Input Text    ${TIN_CityField01}    ${TIN_CityField01Value}
  Input Text    ${TIN_StateField01}    ${TIN_StateField01Value}
  Input Text    ${TIN_ZIPField01}    ${TIN_ZIPField01Value}
  Click Element    ${TIN_CountryField01}
  Sleep    2s
  Click Element    ${TIN_CountryField01Value}
  Input Text    ${TIN_SICField01}    ${TIN_SICField01Value}
  Input Text    ${TIN_CustomerContactNameField}    ${TIN_CustomerContactNameFieldValue}
  Input Text    ${TIN_CustmerJobTitleField}    ${TIN_CustmerJobTitleFieldValue}
  Input Text    ${TIN_PhoneField}    ${TIN_PhoneFieldValue}
  Input Text    ${TIN_EmailField}    ${TIN_EmailFieldValue}
  Click Element    ${TIN_SameAsCheckBox}
  Sleep    2s
  Input Text    ${TIN_NoteField}    ${TIN_NoteValue}
  Click Element    ${TIN_DisclaimerCheckBox}
  Sleep    2s
  Click Element    ${TIN_Submit2Button}
  Sleep    2s
  Page Should Contain    ${TIN_SuccessMessage}