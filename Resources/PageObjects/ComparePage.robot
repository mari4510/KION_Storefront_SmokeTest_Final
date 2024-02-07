*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${ProductID} =    1004471255
${Search_Icon} =    //a[@class='hidden-xs']//i[@class='icon-search']
${Searbox} =    //div[@id='header-searchbox']//input[@placeholder='Enter keywords to search...']
${Searchbox_SearchIcon} =    //div[@id='header-searchbox']//i[@class='icon-search']
${PDP_CompareIcon} =    //a[@title='Compare']
${AddToWorkSheet_Compare} =    //button[@title='Add to Worksheet']
${Availability&Pricing_Link} =    xpath://a[normalize-space()='Availability & Pricing']
${ComparePage_Product_Name} =    fork arm '1250A2-100x45x1100 CCTV
${close_Miniworksheet} =    //div[@class='block-content']//a[@data-toggle='collapse']
*** Keywords ***
click compare icon from PDP page
  sleep    5s
  click element    ${Search_Icon}
  sleep    2s
  input text    ${Searbox}     ${ProductID}
  click element    ${Searchbox_SearchIcon}
  click element    ${PDP_CompareIcon}
  page should contain    ${ComparePage_Product_Name}
  sleep    5s
Click add to worksheet button in compare page
    click element    ${AddToWorkSheet_Compare}
    Sleep    3s
    Click Element    ${close_Miniworksheet}
    
Verify the compare page product in current worksheet
    Sleep    8s
    click element    ${Availability&Pricing_Link}
    sleep    4s
    page should contain    ${ComparePage_Product_Name}