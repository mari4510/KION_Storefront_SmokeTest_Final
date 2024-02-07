*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Annual Returns Link} =  //a[.='New Annual Return Request']
${AR_Pageheading} =  Annual Returns

*** Keywords ***
Navigating to the Annual Returns Page
   Click Element    ${Annual Returns Link}
   Page Should Contain    ${AR_Pageheading}