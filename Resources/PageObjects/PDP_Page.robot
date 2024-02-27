*** Settings ***
Resource    Current_WorkSheet.robot
Library    SeleniumLibrary
*** Variables ***
${TopNav_LindeDropdown} =    xpath://a[normalize-space()='Linde']
${DropdownKitsLink} =    xpath://a[normalize-space()='Kits']
${SortBy} =    xpath://select[@id='SortingAttribute']
${AscendingOrder} =    xpath://option[@value='name-asc']
${ProductIDforPDP_Page} =    xpath://div[9]//div[1]//div[2]//a[1]//span[1]
${AddToWorkSheetButton} =    xpath://button[contains(@class,'btn-primary')][normalize-space()='+ Add to Worksheet']
${Availability&Pricing_Link} =    xpath://a[normalize-space()='Availability & Pricing']
${Product_Name} =    label 'wheel bolt maintenance
${AlternativeProduct_ID} =    13133810316
${AlternativeProductName_01} =    wiring harness 'single pedal
#${AlternativeProductName_02} =    BRAKE ASSY, RH    #this product is breakdownproduct
${AlternativeProductWorkSheetButton} =    xpath://button[@name='AddToBasket']
${BreakDownProduct_ID} =    102112
${BreakDownProduct_Name} =    BRAKE ASSY, RH
${BreakDownProduct_Name_1} =    SHOE, BRAKE W/LINING(1SHOE)
${BreakDownProduct_Name_2} =    SCREW SHHC 5/16-18X5/8 GR
${BreakDownProduct_Name_3} =    SPRING ANTI-RATTLE
${BreakDownProduct_Name_4} =    RETAINER ANTI-RATTLE SPRING
${BreakDownProduct_Name_5} =    ROD PUSH, WHEEL CYLINDER
${BreakDownProduct_Name_6} =    SPRING SHOE RETURN
${BreakDownProduct_Locator} =    xpath://span[normalize-space()='BRAKE ASSY, RH']
${BreakDownProductWorkSheetButton} =    xpath://button[contains(@class,'btn-primary')][normalize-space()='Add Item(s) to Worksheet']
${BreakDownAlertPopup_Ok} =    xpath://div[contains(@role,'dialog')]//button[contains(@class,'btn btn-primary retail-set-message-ok')][normalize-space()='Ok']
${ReplacementProduct_ID} =    777
${ReplacementProduct_Name} =    SHIM
${ReplacementProduct_Name_1} =    washer '2 x 2 3/8 x 0,035
${ReplacementProduct_Locator} =    xpath://span[normalize-space()='SHIM']
${ReplacementProductWorkSheetButton} =   xpath:(//button[contains(@name,'addProductToWorkSheet')])[1]
${Search_Icon} =    xpath://a[@class='hidden-xs']//i[@class='icon-search']
${Searbox} =    xpath://div[@id='header-searchbox']//input[@placeholder='Enter keywords to search...']
${Searchbox_SearchIcon} =    xpath://div[@id='header-searchbox']//i[@class='icon-search']
${minicart_Close} =  //div[@class='block-content']//a[@data-toggle='collapse']
*** Keywords ***
Go to PDP
    mouse down    ${TopNav_LindeDropdown}
    sleep    2s
    double click element    ${DropdownKitsLink}
    sleep    5s
    click element    ${SortBy}
    click element    ${AscendingOrder}
    sleep    5s
    click element    ${ProductIDforPDP_Page}

Click add to worksheet button
    click element    ${AddToWorkSheetButton}
    Wait Until Element Is Visible    ${minicart_Close}
    Click Element    ${minicart_Close}

Go to current worksheet and verify the product
    Click Element    ${Availability&Pricing_Link}
    Sleep    3s
    page should contain    ${Product_Name}

Go Alternative product PDP
    sleep    5s
    click element   ${Search_Icon}
    sleep    2s
    input text    ${Searbox}    ${AlternativeProduct_ID}
    click element    ${Searchbox_SearchIcon}
    sleep    5s
    click element    ${AlternativeProductWorkSheetButton}
    sleep  5s
    Click Element    ${minicart_Close}
Go Breakdown product PDP
    sleep    5s
    click element   ${Search_Icon}
    sleep    2s
    input text    ${Searbox}    ${BreakDownProduct_ID}
    click element    ${Searchbox_SearchIcon}
    click element    ${BreakDownProduct_Locator}
    sleep    3s
    click element    ${BreakDownProductWorkSheetButton}
    sleep    2s
    Wait Until Element Is Visible    ${BreakDownAlertPopup_Ok}
    click element    ${BreakDownAlertPopup_Ok}
    sleep  3s
    ${status}=    Run Keyword And Return Status    Page Should Contain    Worksheet Order Total
    Run Keyword If    '${status}' == 'True'    Click Element    ${minicart_Close}
    ...    ELSE  Log    message
Go replacement product PDP
    sleep    5s
    click element   ${Search_Icon}
    sleep    2s
    input text    ${Searbox}    ${ReplacementProduct_ID}
    click element    ${Searchbox_SearchIcon}
    sleep    5s
    click element    ${ReplacementProduct_Locator}
    sleep    3s
    click element    ${ReplacementProductWorkSheetButton}
    Sleep    5s
    Wait Until Element Is Visible    ${minicart_Close}
    Click Element    ${minicart_Close}
Go to current worksheet and verify the all type of product
    sleep    2s
    click element    ${Availability&Pricing_Link}
    sleep    2s
    page should contain    ${AlternativeProductName_01}
    page should contain    ${BreakDownProduct_Name_1}
    page should contain    ${BreakDownProduct_Name_2}
    page should contain    ${BreakDownProduct_Name_3}
    page should contain    ${BreakDownProduct_Name_4}
    page should contain    ${BreakDownProduct_Name_5}
    page should contain    ${BreakDownProduct_Name_6}
    page should contain    ${ReplacementProduct_Name_1}
