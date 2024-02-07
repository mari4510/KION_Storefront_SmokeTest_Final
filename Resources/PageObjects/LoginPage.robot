*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Order-Template-Icon} =    //i[@class='icon-heart']
${Email-Field} =    //input[@id='ShopLoginForm_Login']
${Password-Field} =    //input[@id='ShopLoginForm_Password']
${Login-Button} =    //button[@name='login']
${Dealer-53464} =    //div[@role='dialog']//div[@class='dealer-sel--no col-sm-2'][normalize-space()='53464']
${Dealer_68694} =  //div[@role='dialog']//div[@class='dealer-sel--name col-sm-3'][normalize-space()='SUNBELT RENTALS, INC']
${SalesRep_PopUp} =    //div[@class='top-bar-inner container']//select[@class='customer-dropdown']
${68694_In_DealerPopup} =    //div[@class='top-bar-inner container']//select[@class='customer-dropdown']//option[text()='(68694) SUNBELT RENTALS, INC']
${53464_In_DealerPopup} =    //div[@class='top-bar-inner container']//option[@value='DsUKAQJFqnAAAAF2Ot1Ph6pY'][normalize-space()='(53464) ELEVEX (Formerly Manutention Quebec)usuall']
${My_Account_Icon} =    //i[@class='icon-users']
${68694_CustomerName} =    SUNBELT RENTALS, INC
*** Keywords ***
go to login
    click element    ${Order-Template-Icon}

login with valid credentials
    input text    ${Email-Field}    ${Login-Mail}
    input password    ${Password-Field}    ${Password}
    click button    ${Login-Button}

Select customer
    click element    ${Dealer-53464}

click dealer dropdown
    Wait Until Element Is Visible    ${SalesRep_PopUp}
    click element    ${SalesRep_PopUp}

Select different dealer from popup
     Click Element    ${68694_In_DealerPopup}

select different sunbelt from dealer dropdown
    click element    ${Dealer_68694}

select Elevex dealer from dealer dropdown
     click element    ${53464_In_DealerPopup}

Go to My Account
    click element    ${My_Account_Icon}

Verify the Loggedin customer
    page should contain    ${68694_CustomerName}

