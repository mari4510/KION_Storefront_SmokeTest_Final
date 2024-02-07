*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Choosefile_Button} =    id:CSVFile
${Availability & Pricing} =    //a[normalize-space()='Availability & Pricing']
${Upload_Button} =    name:addToCartCSV
${FileSelectionField} =    //input[@placeholder='no file selected']
${XLS_File} =    D:\\WorksheetFiles_Auto\\XLSfile_01.xls
${CSV_File} =    D:\\WorksheetFiles_Auto\\CSVfile_01.csv
${XLSX_File} =    D:\\WorksheetFiles_Auto\\XLSXfile_01.xlsx
${MathPublishID_File} =    D:\\WorksheetFiles_Auto\\MathpublishIDFile.csv
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
${SavedUnplacedEmergencyOrder_Link} =    //a[normalize-space()='Auto_Emergency']
${SavedUnplacedStockOrder_Link} =    //a[normalize-space()='Auto_Stock']
${ExportAsCSV_BTN} =    //button[@name='exportToCSV']
${OrderType_Dropdown} =    //select[@id='qcOrderType']
${Emergency_Order} =    //option[@value='Emergency']
${StockOrder} =    //option[@value='Stock']
${SubmitButton} =    name:addToCart
${ProceedToCheckout} =    //button[@name='registeredCheckout']
${Po-field} =    //input[@name='PrimaryPO']
${Po_Number} =    Test_123
${TermsAndConditions} =    terms-conditions-agree
${PlaceOrderNow_Button} =    //button[@id='submit-order']
${CartAlert_Ok_Button} =    //div[@role='dialog']//button[@class='btn btn-primary'][normalize-space()='Ok']
${OrderConfirmationHeading} =    //span[@class='cart-header-title']
${OrderConfirmationLogo} =  //img[@title='Kion Logo']
*** Keywords ***
go to emergency saved worksheet
    click element    ${SavedUnplacedEmergencyOrder_Link}

go to Stock saved workseet
    click element    ${SavedUnplacedStockOrder_Link}

Select the Emergency Order
     click element    ${OrderType_Dropdown}
     click element    ${Emergency_Order}
     sleep    2s
go to shoppingcart
    Click Button    ${SubmitButton}
    sleep    16s
    ${status}=    Run Keyword And Return Status    Page Should Contain    Items have been added to your shopping cart
    Run Keyword If    '${status}' == 'True'    Click Element    ${CartAlert_Ok_Button}
    ...    ELSE    Log    Button not found
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

Select the Stock Order
    click element    ${OrderType_Dropdown}
    click element    ${StockOrder}
