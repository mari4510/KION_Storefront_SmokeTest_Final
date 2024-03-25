*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Logout} =  //span[@class='hidden-xs']
${Admin_Login_Link} =  //a[@class='btn btn-link']
${Order-Template-Icon} =    //i[@class='icon-heart']
${Email-Field} =    //input[@id='ShopLoginForm_Login']
${Password-Field} =    //input[@id='ShopLoginForm_Password']
${Login-Button} =    //button[@name='login']
${Admin_LoginMail} =  thirutest0@gmail.com
${Admin_Password} =  Test@123
${AdminLoginPageHeader} =  Admin Login
${BackOfficeHomePageHeader} =   Welcome to the Linde Link Backoffice.
*** Keywords ***
Logout Dealer
  Click Element    ${Logout}

Go Admin Login
    Click Element    ${Admin_Login_Link}
    Wait Until Page Contains    ${AdminLoginPageHeader}
    Page Should Contain  ${AdminLoginPageHeader}

Login with admin credentials
  input text    ${Email-Field}    ${Admin_LoginMail}
  input password    ${Password-Field}    ${Admin_Password}
  click button    ${Login-Button}
  Wait Until Page Contains    ${BackOfficeHomePageHeader}
  Page Should Contain    ${BackOfficeHomePageHeader}


