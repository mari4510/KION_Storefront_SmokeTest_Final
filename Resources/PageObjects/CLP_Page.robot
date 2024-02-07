*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Lindelink} =    xpath://a[normalize-space()='Linde']
${Bredcrumb} =    xpath://body/div[@class='wrapper static-wrap-hgt']/div[@role='main']/div[@class='content-wrapper']/div[2]
${NowShoppingHeading} =    xpath://h1[text()='Now Shopping by']
${RefinementSection} =    id:filter-accordion
${CompareHeading_Refinements} =    xpath://h3[text()='Compare Products']
${Expand_Icon} =  xpath://i[@class='fas pull-right fa-chevron-right']
${Collapse_Icon} =    xpath://i[@class='fas pull-right fa-chevron-down']
${OrderTemplateHeading_Refinements} =    xpath://div[@class='plp-wishlist-block']//h3[normalize-space()='Order Templates']//i
${Maintenance_Link} =    xpath://h3[text()='Maintenance']
${Category_Refinement_Section} =  //h3[normalize-space()='Category']
*** Keywords ***
Click Linde in Header
    click element    ${Lindelink}

Verify the now shopping by heading
    page should contain element    ${NowShoppingHeading}

Veify the refinement section
    page should contain element   ${RefinementSection}

Verify the category refinement section
    Page Should Contain Element    ${Category_Refinement_Section}
    Click Element    ${Category_Refinement_Section}
    Click Element    ${Category_Refinement_Section}

Verify the compare products section in refinement
    page should contain element    ${CompareHeading_Refinements}
    click element    ${CompareHeading_Refinements}
    click element    ${CompareHeading_Refinements}

Verify the Order template section
    page should contain element    ${OrderTemplateHeading_Refinements}
    click element     ${OrderTemplateHeading_Refinements}
    click element     ${OrderTemplateHeading_Refinements}

Click maintanence category
    Execute JavaScript    window.scrollTo(500,0)
    click element    ${Maintenance_Link}