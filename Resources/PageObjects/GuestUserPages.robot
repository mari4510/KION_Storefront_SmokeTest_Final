*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LogoImage} =  //img[@title='Kion Logo']
${Linde_Link} =   //a[normalize-space()='Linde']
${Login_Iocon} =   xpath://i[@class='icon-users']
${Login_Link} =    xpath://span[@class='hidden-xs']
${Kits_Link_DropDown} =    //a[normalize-space()='Kits']
${Compare_Icon} =    xpath://a[@href='https://tst.lindelink.com/product-compare?SKU=']//span[@class='icon-sliders']
${Search_Icon} =    xpath://a[@class='hidden-xs']//i[@class='icon-search']
${OrderTemplateIcon} =    xpath://i[@class='icon-heart']
${Minicart_Icon} =    xpath://a[@class='shop-bag-link hidden-xs']//i[@class='icon-shopping-bag']
${Language_SwitchIcon} =    xpath://i[@class='icon-align-right']
${Login_Page_Heading} =    Login
${Category_Heading} =    Parts
${PLP_Page_Heading} =    //li[@class='breadcrumbs-list breadcrumbs-list-active']
${SortBy} =    //select[@id='SortingAttribute']
${AscendingOrder} =    //option[@value='name-asc']
${ProductName_PLP} =    //div[11]//div[1]//div[2]//a[1]//span[1]
${ProductName_PDP} =    Maintenance Decal 'KION Baoli 2 Brand
${Product_Image} =    //img[@alt="Maintenance Decal 'KION Baoli 2 Brand product photo Front View L"]
${Product_SupportImage} =    //img[@data-type='S']
${Product_Sku} =    L0009387522
${Breadcrumb_Guest} =    //div[@class='breadcrumbs row']
${ProductBrand} =    Brand: Linde
${Product_Price} =    $ 6.00
${ProductShort_Description} =    Maintenance Decal 'KION Baoli 2 Brand
${Recently_Viewed_Heading} =    Recently Viewed
${Searbox} =    //div[@id='header-searchbox']//input[@placeholder='Enter keywords to search...']
${Searchbox_SearchIcon} =    //div[@id='header-searchbox']//i[@class='icon-search']
${SearchTerm_ValidTerm} =    100
${SRP_Page_Verify} =    Search Results for "${SearchTerm_ValidTerm}"

*** Keywords ***
Verify the Guest_home Page header
    sleep    10s
    page should contain element    ${LogoImage}
    page should contain element    ${Linde_Link}
    page should contain element    ${Login_Iocon}
    page should contain element    ${Login_Link}
    page should contain element    ${Compare_Icon}
    page should contain element    ${Search_Icon}
    page should contain element    ${OrderTemplateIcon}
    page should contain element    ${Minicart_Icon}
    page should contain element    ${Language_SwitchIcon}

click guest_header order template icon
    click element    ${OrderTemplateIcon}

Verify the Login page is navigated
    page should contain    Login

go to home page
    click element    ${LogoImage}

click header_linde link
    click element    ${Linde_Link}
    sleep    25 s
    page should contain    ${Category_Heading}

go to guest PLP
    mouse down    ${Linde_Link}
    sleep    2s
    mouse down    ${Kits_Link_DropDown}
    double click element    ${Kits_Link_DropDown}
    sleep    15s
    page should contain element    ${plp_page_heading}
    Sleep    5s
    click element    ${sortby}
    click element    ${ascendingorder}

go to guest PDP
    click element    ${ProductName_PLP}


Verify the Guest_PDP contents
    page should contain    ${ProductName_PDP}
    page should contain element    ${Product_Image}
    page should contain element    ${Product_SupportImage}
    page should contain    ${Product_Sku}
    page should contain element    ${Breadcrumb_Guest}
    page should contain    ${ProductBrand}
    page should contain    ${Product_Price}
    page should contain    ${ProductShort_Description}
    page should contain    ${Recently_Viewed_Heading}

go to SRP page
    sleep    5s
    click element    ${Search_Icon}
    sleep    2s
    input text    ${Searbox}    ${SearchTerm_ValidTerm}
    click element    ${Searchbox_SearchIcon}
    page should contain    ${SearchTerm_ValidTerm}
