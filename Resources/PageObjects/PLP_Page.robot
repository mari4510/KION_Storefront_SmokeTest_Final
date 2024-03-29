*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Kits_Link} =    xpath://h3[normalize-space()='Kits']
${Product_Image_01} =   xpath://span[contains(@class,'plp-img1')]//img[contains(@title,'1000 Hr Maintenance Kit')]
${Add-to-worksheet-link} =    xpath://form[contains(@name,'productExpressShopForm_14010086506')]//button[@title='Add to Worksheet'][normalize-space()='+ Add to Worksheet']
${Product_Image_02} =    xpath://span[@class='plp-img1']//img[@title='3000 HR maintenance package 396-03']
${PLP_QuickView} =    xpath://body/div[@class='wrapper static-wrap-hgt']/div[@role='main']/div[@class='content-wrapper']/div[@id='family-page']/div[@id='place-holder']/div[@id='plp-products-block']/div[@class='product-list plp-list-view plp-product-list row']/div[3]/div[1]/div[1]/div[1]
${QuickView_AddtoWorksheet} =    //button[contains(@class,'btn-primary')][normalize-space()='+ Add to Worksheet']
${SortBy} =    //select[@id='SortingAttribute']
${AscendingOrder} =    //option[@value='name-asc']
${RefinementsSection} =    id:filter-accordion
${CompareSection} =    //h3[normalize-space()='Compare Products']
${OrderTemplateSection} =    //h3[normalize-space()='Compare Products']
${ListViewButton} =    //span[@class='glyphicon glyphicon-list']
${GridViewButton} =    //span[@class='glyphicon glyphicon-th']
${minicart_Close} =  //div[@class='block-content']//a[@data-toggle='collapse']
${ListViewAddtoWorksheetButton} =    //form[contains(@name,'productExpressShopForm_L0009381501')]//button[contains(@title,'Add to Worksheet')][normalize-space()='+ Add to Worksheet']
${Linde_Link} =   //a[normalize-space()='Linde']
${Kits_Link_DropDown} =    //a[normalize-space()='Kits']
${PLP_Page_Heading} =    //li[@class='breadcrumbs-list breadcrumbs-list-active']
*** Keywords ***
Click Kits link
    #Wait Until Page Contains Element    ${Linde_Link}
    mouse down    ${Linde_Link}
    #sleep    2s
    #Wait Until Page Contains Element    ${Kits_Link_DropDown}
    mouse down    ${Kits_Link_DropDown}
    double click element    ${Kits_Link_DropDown}
    #sleep    2s
    Wait Until Page Contains Element    ${plp_page_heading}
    page should contain element    ${plp_page_heading}
    #Sleep    2s
    Wait Until Page Contains Element    ${SortBy}
    click element    ${sortby}
    Wait Until Page Contains Element    ${ascendingorder}
    click element    ${ascendingorder}

Add a product to worksheet
    ${x}=        Get Horizontal Position  ${Product_Image_01}
    ${y}=        Get Vertical Position   ${Product_Image_01}
    Execute Javascript  window.scrollTo(${x}, ${y})
    Wait Until Page Contains Element    ${Add-to-worksheet-link}
    click element    ${Add-to-worksheet-link}
    page should contain element    ${Add-to-worksheet-link}
    #Wait Until Page Contains Element    ${minicart_Close}
    Wait Until Element Is Visible    ${minicart_Close}
    Click Element    ${minicart_Close}

Select ascending order in sort by
    Execute JavaScript    window.scrollTo(400,0)
    Wait Until Page Contains Element    ${sortby}
    click element    ${sortby}
    Wait Until Page Contains Element    ${ascendingorder}
    click element    ${ascendingorder}

Click the quick view button
    Mouse Over    ${Product_Image_02}
    Wait Until Page Contains Element    ${PLP_QuickView}
    click element    ${PLP_QuickView}
    #Sleep    1s

click the Quick view add to worksheet button
    Sleep    2s
    Wait Until Page Contains Element    ${QuickView_AddtoWorksheet}
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
    Execute JavaScript    window.scrollTo(500,0)
    Wait Until Page Contains Element    ${ListViewButton}
    click element   ${ListViewButton}

click add worksheet button in list view
    Wait Until Page Contains Element    ${ListViewAddtoWorksheetButton}
    click element   ${ListViewAddtoWorksheetButton}
    #Sleep    2s
    Wait Until Element Is Visible   ${minicart_Close}
    Click Element    ${minicart_Close}
click gridview icon
    Execute JavaScript    window.scrollTo(500,0)
    Wait Until Page Contains Element    ${GridViewButton}
    click element    ${GridViewButton}
