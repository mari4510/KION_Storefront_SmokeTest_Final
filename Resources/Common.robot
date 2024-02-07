*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Kion_App.robot
*** Variables ***
${LOGOUT_LINK} =  //span[text()='Logout']

*** Keywords ***
Begin Test
    open browser    about:blank     ${BROWSER}
    maximize browser window
    go to    ${URL}
    Kion_App.Go to login page
    Kion_App.Login to the kion site  #loging in using #53464
    Kion_App.Select customer from cutomer selector

End Test
    close browser

guest user
    open browser    about:blank     ${BROWSER}
    maximize browser window
    go to    ${URL}
    #//div[@role='dialog']//div[@class='dealer-sel--no col-sm-2'][.='53464']