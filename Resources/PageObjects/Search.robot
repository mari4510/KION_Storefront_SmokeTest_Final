*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Search_Icon} =    //a[@class='hidden-xs']//i[@class='icon-search']
${Searbox} =    //div[@id='header-searchbox']//input[@placeholder='Enter keywords to search...']
${Searchbox_SearchIcon} =    //div[@id='header-searchbox']//i[@class='icon-search']
${SearchTerm_Product} =    146008
${Search_Product_ID} =    146008
${SearchTerm_ValidTerm} =    100
${SRP_Page_Verify} =    Search Results for "${SearchTerm_ValidTerm}"
${SRP_Refinement} =    id:filter-accordion
*** Keywords ***
Search the product
    #sleep    5s
    #Wait Until Page Contains Element    ${Search_Icon}
    click element    ${Search_Icon}
    sleep    2s
    Wait Until Page Contains Element    ${Searbox}
    input text    ${Searbox}    ${SearchTerm_Product}
    click element    ${Searchbox_SearchIcon}
    Wait Until Page Contains    ${Search_Product_ID}
    page should contain    ${Search_Product_ID}

Search with valid search term
    #sleep    5s
    #Wait Until Page Contains Element    ${Search_Icon}
    click element    ${Search_Icon}
    sleep    2s
    Wait Until Page Contains Element    ${Searbox}
    input text    ${Searbox}    ${SearchTerm_ValidTerm}
    click element    ${Searchbox_SearchIcon}
    #sleep    3s
    Wait Until Page Contains    ${SRP_Page_Verify}
    page should contain    ${SRP_Page_Verify}
    page should contain element    ${SRP_Refinement}

