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
${Admin_Password} =  test@123
*** Keywords ***
Logout Dealer
  Click Element    ${Logout}
  
  
Login with admin credentials
  Click Element    ${Admin_Login_Link}
  input text    ${Email-Field}    ${Admin_LoginMail}
  input password    ${Password-Field}    ${Admin_Password}
  click button    ${Login-Button}


