*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Users_Link} =    //a[normalize-space()='Users']
${Users_PageHeading} =    Users
${AssignUser_Button} =    //a[normalize-space()='Assign Users']
${AddUser_Button} =    //a[normalize-space()='Add User']
${Usercolumn} =    User
${Budgetcolumn} =    Budget
${PendingOrdersColumn} =    //div[normalize-space()='Pending orders']
${RolesColumn} =    //div[normalize-space()='Role(s)']
${User_details_Section} =    //div[@class='col-md-10']
${Footer section} =    xpath://div[@class='footer']//div[@class='row']
${TestMariUser} =    //a[normalize-space()='Test Mari']
${Userdetails_Page_heading} =    User Details
${Profileheading} =    Profile
${UserName_Details} =    Name
${UserPhone_Details} =    Phone
${UserEmail_Deails} =    E-mail
${RolesBudgetsection_Details} =    Role & Budget Limits
${OrderSpendlimitSection} =    Order Spend Limit
${BudetSection} =    Budget
${ProfileEditIcon} =    //a[@data-testing-id='edit-profile-button']//span[@class='glyphicon glyphicon-pencil']
${Roles_Budget_editIcon} =    //a[@href='https://tst.lindelink.com/INTERSHOP/web/WFS/Linde-Business-Site/en_US/-/USD/ViewUserRole-View?UserID=DJcKAQJEfUIAAAGIywhpiR.T']//span[@class='glyphicon glyphicon-pencil']
${AssinUserHeading} =    Assign Users
${AssignuserSearchSection} =    Name or ID:
${ADDUserHeading} =   Create New User
${CreateUserButton} =    //button[@name='Create']
${CancelButton} =    //button[@name='Create']
${MyOrganaization_Link} =    //p[normalize-space()='My Organization']
*** Keywords ***
Verify the user page contents
    click element    ${Users_Link}
    page should contain    ${Users_PageHeading}
    page should contain element    ${AssignUser_Button}
    page should contain element    ${adduser_button}
    page should contain    ${Usercolumn}
    page should contain    ${Budgetcolumn}
    page should contain element    ${pendingorderscolumn}
    page should contain element   ${RolesColumn}
    page should contain element    ${Footer section}

Verify userdetails page details
    click element    ${Users_Link}
    click element    ${TestMariUser}
    page should contain    ${userdetails_page_heading}
    page should contain element    ${ProfileEditIcon}
    page should contain   ${UserEmail_Deails}
    page should contain   ${UserName_Details}
    page should contain   ${UserPhone_Details}
    page should contain   ${RolesBudgetsection_Details}
    page should contain element    ${Roles_Budget_editIcon}
    page should contain    ${OrderSpendlimitSection}
    page should contain    ${budetsection}

Verify the assign User button
    click element    ${Users_Link}
    Sleep    2s
    page should contain element    ${AssignUser_Button}
    click element    ${AssignUser_Button}
    page should contain    ${AssinUserHeading}
    page should contain    ${AssignuserSearchSection}

Verify the add user button
    click element    ${Users_Link}
    sleep    5s
    page should contain element    ${AddUser_Button}
    click element    ${AddUser_Button}
    page should contain    ${ADDUserHeading}
    page should contain element    ${CreateUserButton}
    page should contain element    ${cancelbutton}

