*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn
*** Variables ***
${Choosefile_Button} =    id=CSVFile
${Availability & Pricing} =    //a[normalize-space()='Availability & Pricing']
${Upload_Button} =    name:addToCartCSV
${FileSelectionField} =    //input[@placeholder='no file selected']
${XLS_File} =    D:\\WorksheetFiles_Auto\\XLSfile_01.xls
${CSV_File} =    D:\\WorksheetFiles_Auto\\CSVfile_01.csv
${XLSX_File} =    D:\\WorksheetFiles_Auto\\XLSXfile_01.xlsx
${Stock_CSV} =   D:\\WorksheetFiles_Auto\\CSVfile_01_Stock.csv
${MathPublishID_File} =    D:\\WorksheetFiles_Auto\\MatPublishIDFile.csv
${File_Product_01} =    SEAL STUFFING BOX
${File_Product_02} =    BUTTON PUSH HORN
${File_Product_03} =    PHOTO CELL
${File_Product_04} =    BREATHER ELEMENT, OIL
${File_Product_05} =    Bearing
${SelectAll_Link} =    id:selectAllItem
${DeleteButton} =    id:deleteItems
${MathpublishPopup_Heading} =    More than one material available for the following part number(s) from your last file upload. Click to choose the desired one.
${MathpublishPopup_DeleteAll} =  //button[normalize-space()='Delete All']
${MathpublishID} =    //span[normalize-space()='8713809']
${MathpublishProductPopup} =    The part you entered matches multiple materials, please choose one from the below.
${MathpublishProductsPopupWorksheet} =    //div[@class='modal fade in']//button[@name='AddWishlistItem'][normalize-space()='Add to Worksheet']
${Math_Product} =    CABLE
${ExportAsCSV_BTN} =    //button[@name='exportToCSV']
${SaveWorkSheetBTN} =  //button[@title='Save Worksheet']
${NewWorkSheetNameField} =  //input[@name='WishlistPropertiesForm_WishlistName']
${NewWorkSheetName} =  Auto_Stock
${SaveChangesBTN} =  //button[@name='EditQuickOrderWishlistProperties']
${SaveWorksheetOkBTN} =  //a[@class='btn btn-primary']
${OrderType_Dropdown} =    //select[@id='qcOrderType']
${Emergency_Order} =    //option[@value='Emergency']
${StockOrder} =    //option[@value='Stock']
${SubmitButton} =    //button[@name='addToCart']
${ProceedToCheckout} =    //button[@name='registeredCheckout']
${Po-field} =    //input[@name='PrimaryPO']
${Po_Number} =    Test_123
${TermsAndConditions} =    terms-conditions-agree
${PlaceOrderNow_Button} =    //button[@id='submit-order']
${CartAlert_Ok_Button} =    //div[@role='dialog']//button[@class='btn btn-primary'][normalize-space()='Ok']
${OrderConfirmationHeading} =    //span[@class='cart-header-title']
${PartField} =    //div[@class='qo-rows col-md-3']//input[@id='quickorder-sku_1']
${OrderConfirmationLogo} =  //img[@title='Kion Logo']
*** Keywords ***
Go to currentworksheet
    click element    ${Availability & Pricing}

Upload a xls file
    Choose File     ${Choosefile_Button}    ${XLS_File}
    click element    ${Upload_Button}
    Wait Until Page Contains     ${File_Product_01}
    page should contain    ${File_Product_01}
    page should contain    ${File_Product_02}
    page should contain    ${File_Product_03}
    page should contain    ${File_Product_04}
    page should contain    ${File_Product_05}

Clear products
    click element    ${SelectAll_Link}
    sleep    3s
    click element    ${DeleteButton}

Upload the CSV file in the current worksheet
    Choose File     ${Choosefile_Button}    ${CSV_File}
    click element    ${Upload_Button}
    Wait Until Page Contains    ${File_Product_01}
    page should contain    ${File_Product_01}
    page should contain    ${File_Product_02}
    page should contain    ${File_Product_03}
    page should contain    ${File_Product_04}
    page should contain    ${File_Product_05}

CSV file for Stock type order in the current worksheet
    Scroll Page    0    -100
    Choose File     ${Choosefile_Button}    ${XLSX_File}
    Sleep    2S
    click element    ${Upload_Button}
    Sleep    3s
    page should contain    ${File_Product_01}
    page should contain    ${File_Product_02}
    page should contain    ${File_Product_03}
    page should contain    ${File_Product_04}
    page should contain    ${File_Product_05}
Upload the XLSX file in the current worksheet
    Choose File     ${Choosefile_Button}    ${XLSX_File}
    click element    ${Upload_Button}
    page should contain    ${File_Product_01}
    page should contain    ${File_Product_02}
    page should contain    ${File_Product_03}
    page should contain    ${File_Product_04}
    page should contain    ${File_Product_05}

upload a mathpublish id
    Choose File     ${Choosefile_Button}    ${MathPublishID_File}
    click element    ${Upload_Button}
    sleep    2s
    page should contain    ${MathpublishPopup_Heading}
    page should contain element    ${MathpublishPopup_DeleteAll}
    sleep    2s
    click element    ${MathpublishID}
    page should contain     ${MathpublishProductPopup}
    sleep    2s
    click element    ${MathpublishProductsPopupWorksheet}
    sleep    2s
    page should contain     ${Math_Product}
    sleep    2s
    click element    ${MathpublishPopup_DeleteAll}


Export the current worksheet
    Choose File     ${Choosefile_Button}    ${XLSX_File}
    click element    ${Upload_Button}
    sleep    3s
    click element    ${ExportAsCSV_BTN}

Select the Emergency Order
     click element    ${OrderType_Dropdown}
     click element    ${Emergency_Order}
     sleep    2s

go to shoppingcart
    Click Button    ${SubmitButton}
    sleep    5s
    ${status}=    Run Keyword And Return Status    Page Should Contain    Items have been added to your shopping cart
    Run Keyword If    '${status}' == 'True'    Click Element    ${CartAlert_Ok_Button}
    ...    ELSE  Log    message
    Sleep    3s

go to checkout
    click element    ${ProceedToCheckout}
    sleep    5s

Place the Order
    input text    ${Po-field}    ${Po_Number}
    click element    ${TermsAndConditions}
    click element    ${PlaceOrderNow_Button}
    sleep     5s
    page should contain element    ${OrderConfirmationHeading}
    Click Element    ${OrderConfirmationLogo}

Place the Order and verify all commponents in orderconfirmation page
    input text    ${Po-field}    ${Po_Number}
    click element    ${TermsAndConditions}
    click element    ${PlaceOrderNow_Button}
    sleep     5s
    page should contain element    ${OrderConfirmationHeading}

Select the Stock Order
    click element    ${OrderType_Dropdown}
    click element    ${StockOrder}

Add a <500 product
    Scroll Page    0    -100
    Choose File     ${Choosefile_Button}    ${Stock_CSV}
    Sleep    3s
    click element    ${Upload_Button}

Add product to worksheet
    input text    ${PartField}    X677267
    press keys    ${PartField}    ENTER

Save a Stock worksheet
    Choose File     ${Choosefile_Button}    ${XLSX_File}
    Sleep    3s
    click element    ${Upload_Button}
    Sleep    2s
    Click Element    ${OrderType_Dropdown}
    Click Element    ${StockOrder}
    Click Element    ${SaveWorkSheetBTN}
    Sleep    3s
    Input Text    ${NewWorkSheetNameField}    ${NewWorkSheetName}
    Click Element    ${SaveChangesBTN}
    Sleep    2s
    Click Element    ${SaveWorksheetOkBTN}

Scroll Page
    [Arguments]    ${x_offset}    ${y_offset}
    Execute JavaScript    window.scrollBy(${x_offset},${y_offset})