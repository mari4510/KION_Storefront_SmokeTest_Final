*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Banner_Image} =    xpath://div[@class='item active']//img[contains(@class,'enhanced-image')]
${Middle contents} =  xpath://body/div[@class='wrapper static-wrap-hgt']/div[@role='main']/div[@class='content-wrapper']/div[1]
${Featured products heading} =    Featured Products
${Featured Products} =    class:product-list-container
${Footer section} =    xpath://div[@class='footer']//div[@class='row']
${Back to top} =    xpath://i[@class='fa fa-angle-double-up']
${Featured-Product-Name} =    //div[@class='slick-slide slick-current slick-active']//div//span[@class='plp-img1']//img[@title='#10 V7 SANDEN ADAPTOR']
${Add to worksheet} =    //div[contains(@class,'slick-slide slick-current slick-active')]//div//button[@title='Add to Worksheet'][normalize-space()='+ Add to Worksheet']
${Scroll_Height} =    500
${minicart_Close} =  //div[@class='block-content']//a[@data-toggle='collapse']
${Header_Logo} =  //img[@alt='Logo']
*** Keywords ***
Go Home
  Wait Until Element Is Visible    ${Header_Logo}
  Click Element    ${Header_Logo}
Verify the banner image
    page should contain image    ${Banner_Image}

Verify the middle contents
    page should contain element    ${Middle contents}

Verify the featured product section
    page should contain   ${Featured products heading}
    page should contain element  ${Featured Products}

Verify the footer section
    page should contain element    ${Footer section}
    page should contain element    ${Back to top}

Hover over the product and click add to worksheet
    Sleep    2s
    Mouse Over    ${Featured-Product-Name}
    Sleep    2s
    click element    ${Add to worksheet}
    Sleep    2s
    Click Element  ${minicart_Close}


