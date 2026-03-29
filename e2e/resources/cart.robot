***Settings***
Library    SeleniumLibrary
Variables     ../variables/userdata.py
*** Keywords ***
close popup
    Wait Until Page Contains Element    xpath://a[@class="close clsBtn accountSelectionCancel"]
    Click Element    xpath://a[@class="close clsBtn accountSelectionCancel"]
wait click
    [Arguments]    ${loc}
    Wait Until Keyword Succeeds    2x    10s    Scroll Element Into View    ${loc}
    Wait Until Element Is Enabled    ${loc}    10s
change account
    Click Element     id=selectact
    wait click     id=changeAccountNoAjax
    Input Text      id=changeAccountNoAjax     0010021308
    Click Element    id=searchSelectAccountBtnHeader
    Wait Until Element Is Visible    xpath://div[text()='0010021308']       20s
    wait click    xpath://div[text()='0010021308']
    Click Element    xpath://div[text()='0010021308']

add to cart by catalog
    Wait Until Element Is Visible    xpath://a[@title='Catalog']         20s
    Click Element    xpath://a[@title='Catalog']
    Wait Until Element Is Visible    xpath://span[text()='G035 Actelion']    10s
    Click Element    xpath://span[text()='G035 Actelion']
    Click Element    xpath://a[text()='See All Products in this Category'][1]
    Click Element    xpath://a[text()='ZAVESCA 100MG 90 CAPS. BR']
    wait click    xpath://input[@id="417791" and @value="ADD TO CART"]
    Click Element    xpath://input[@id="417791" and @value="ADD TO CART"]
#    wait click      class=bi bi-cart-fill
    Wait Until Element Is Visible    xpath://button[normalize-space()='Validate']
    Click Element    xpath://button[normalize-space()='Validate']
    wait click    xpath://button[normalize-space()='Continue to Shipping']
    Click Element    xpath://button[normalize-space()='Continue to Shipping']
    Wait Until Element Is Visible    xpath=//a[contains(@class,'continuetopayment')]    20s
    Execute JavaScript    document.querySelector('a.continuetopayment').click();
    Wait Until Element Is Enabled    xpath://button[normalize-space()='Checkout']    20s
    Click Element    xpath://button[normalize-space()='Checkout']
    Wait Until Element Is Enabled    xpath://button[normalize-space()='Place Order']    20s
    Click Element    xpath://button[normalize-space()='Place Order']
