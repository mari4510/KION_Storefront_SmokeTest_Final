*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Kits_Link} =    xpath://h3[normalize-space()='Kits']
${Product_Image_01} =   xpath://span[contains(@class,'plp-img1')]//img[contains(@title,'1000 Hr Maintenance Kit')]
${Add-to-worksheet-link} =    xpath://form[contains(@name,'productExpressShopForm_14010086506')]//button[@title='Add to Worksheet'][normalize-space()='+ Add to Worksheet']
${Product_Image_02} =    xpath://span[@class='plp-img1']//img[@title='3000 HR maintenance package 396-03']
${PLP_QuickView} =    xpath://body/div[@class='wrapper static-wrap-hgt']/div[@role='main']/div[@class='content-wrapper']/div[@id='family-page']/div[@id='place-holder']/div[@id='plp-products-block']/div[@class='product-list plp-list-view plp-product-list row']/div[3]/div[1]/div[1]/div[1]
${QuickView_AddtoWorksheet} =    name:addProductToWorkSheet
${SortBy} =    //select[@id='SortingAttribute']
${AscendingOrder} =    //option[@value='name-asc']
${RefinementsSection} =    id:filter-accordion
${CompareSection} =    //h3[normalize-space()='Compare Products']
${OrderTemplateSection} =    //h3[normalize-space()='Compare Products']
${ListViewButton} =    //span[@class='glyphicon glyphicon-list']
${GridViewButton} =    //span[@class='glyphicon glyphicon-th']
${minicart_Close} =  //div[@class='block-content']//a[@data-toggle='collapse']
${ListViewAddtoWorksheetButton} =    //form[contains(@name,'productExpressShopForm_L0009381501')]//button[contains(@title,'Add to Worksheet')][normalize-space()='+ Add to Worksheet']
*** Keywords ***
Click Kits link
    click element    ${Kits_Link}

Add a product to worksheet
    ${x}=        Get Horizontal Position  ${Product_Image_01}
    ${y}=        Get Vertical Position   ${Product_Image_01}
    Execute Javascript  window.scrollTo(${x}, ${y})
    click element    ${Add-to-worksheet-link}
    page should contain element    ${Add-to-worksheet-link}
    Wait Until Element Is Visible    ${minicart_Close}
    Click Element    ${minicart_Close}
Select ascending order in sort by
    click element    ${sortby}
    click element    ${ascendingorder}
Click the quick view button
    Mouse Over    ${Product_Image_02}
    click element    ${PLP_QuickView}

click the Quick view add to worksheet button
    click button    ${QuickView_AddtoWorksheet}
    Wait Until Element Is Visible    ${minicart_Close}
    Click Element    ${minicart_Close}
Verify the refinement section
    page should contain element    ${RefinementsSection}
    page should contain element    ${comparesection}
    click element    ${comparesection}
    click element    ${comparesection}
    page should contain element    ${OrderTemplateSection}
    click element    ${OrderTemplateSection}
    click element    ${OrderTemplateSection}

click list view icon
    click element   ${ListViewButton}

click add worksheet button in list view
    click element   ${ListViewAddtoWorksheetButton}
    Sleep    3s
    Click Element    ${minicart_Close}
click gridview icon
    Execute JavaScript    window.scrollTo(500,0)
    click element    ${GridViewButton}
