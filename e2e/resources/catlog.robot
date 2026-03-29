
***Settings***
Library    SeleniumLibrary
Variables     ../variables/userdata.py
Resource        ../resources/cart.robot
*** Keywords ***

user management
    Scroll Element Into View    xpath://a[@title="User Management"]
    wait click        xpath://a[@title="User Management"]
    Click Element    xpath://a[@title="User Management"]
    Click Element    xpath://button[text()="Create User"]
    Click Element    id=mdd
    Click Element    id=consumer
    Click Element    id=pharma
    Input Text   xpath://input[@id="fisrtName"]    kjhg
    Input Text    id=lastName    kljhg
    Input Text    id=email    lkjhgj@gmail.com
    Input Text    id=phone    9876578
    Scroll Element Into View    xpath://button[@data-id="language"]
    Click Element    xpath://button[@data-id="language"]
    Click Element    id=bs-select-1-0
    # Scroll Element Into View    xpath=//label[normalize-space()="Access to Order History"]
    # Wait Until Element Is Visible    xpath=//label[normalize-space()="Access to Order History"]   15s
    # Click Element    xpath=//label[normalize-space()="Access to Order History"]
    Execute Javascript    document.getElementById("roles4").click();
invoice
    Click Element    xpath://a[@title="Invoice History"]
    Click Element    xpath://button[@aria-owns="bs-select-1"]
    Click Element    xpath://a[@id="bs-select-1-2"]
    Click Element    xpath://button[@id="ajaxTableFormSearchButton"]
report
    Wait Until Element Is Enabled    xpath://a[@title="Reports"]    15s
    Mouse Over     xpath://a[@title="Reports"]
    Wait Until Element Is Enabled    xpath://a[@title="Inventory Analysis"]    20s

    Execute Javascript    document.querySelector("a[title='Inventory Analysis']").click();

    Wait Until Element Is Enabled    xpath://button[@aria-owns="bs-select-1"]    20s
    Click Element    xpath://button[@aria-owns="bs-select-1"]
    Wait Until Element Is Enabled    xpath://span[text()='Order Analysis']
    Click Element    xpath://span[text()='Order Analysis']
    Click Element    xpath://button[@aria-owns="bs-select-4"]
    Wait Until Element Is Visible    id=bs-select-4-1    10s
    Click Element    id=bs-select-4-1
    Wait Until Element Is Enabled    id=productCode    20s
    Input Text    id=productCode    HAR36

    #2
    Wait Until Element Is Enabled    xpath://a[@title="Reports"]    15s
    Mouse Over     xpath://a[@title="Reports"]
    Wait Until Element Is Enabled    xpath://a[@title="Open Orders Report"]    15s
    Click Element    xpath://a[@title="Open Orders Report"]
    Click Element    xpath://button[@aria-owns="bs-select-2"]
    Click Element    id=bs-select-2-6
    Click Element    xpath://button[@aria-owns="bs-select-3"]
    Click Element    id:bs-select-3-2
    Click Element    xpath://button[@aria-owns="bs-select-4"]
    Click Element    id=bs-select-4-2

    Click Element    xpath://a[@title="Home"]
    sleep    2s
template
    Wait Until Element Is Enabled    xpath://a[@title="Templates"]    15s
    Click Element    xpath://a[@title="Templates"]
    Wait Until Element Is Enabled    id=createTemplate
    Click Element    id=createTemplate
    Wait Until Element Is Enabled    id=templateName    20s
    Input Text    id=templateName    temp7
    Wait Until Element Is Enabled    id=QtyQuantity
    Input Text    id=QtyQuantity    2
    Wait Until Element Is Enabled    id:productNumber
    Click Element    id:productNumber
    Click Element    xpath://a[@title="Home"]
    sleep    2s
sellout
    Click Element    xpath://a[@title="Sellout"]
    Click Element    xpath://button[normalize-space(.)='Upload Sellout Report']
    Wait Until Element Is Visible    xpath://button[normalize-space(.)='Close']
    Wait Until Element Is Enabled    xpath://button[normalize-space(.)='Close']
    Click Element    xpath://button[@data-bs-dismiss='modal']
    # Execute Javascript    document.querySelector("//button[normalize-space()='Close']").click();
    sleep    2s

services
    wait click    xpath://a[@title="Services"]
    Click Element    xpath://a[@title="Services"]
    Click Element    //p[normalize-space(text()) = 'Add Indirect Customer' and @class="firstline"]
    Input Text    id=customerName    shiv
    Click Element    id=radioCnpj
    wait click    xpath://button[@data-id="customerType"]
    Click Element    xpath://button[@data-id="customerType"]
    Wait Until Element Is Visible    id=bs-select-1-2    10s
    Click Element    id=bs-select-1-2
ff
    [Arguments]    ${xp}    ${id}
    Click Element    xpath://button[@aria-owns="${xp}"]
    Wait Until Element Is Visible    ${id}
    Click Element    ${id}
customer arg
    ff    bs-select-2    bs-select-2-2
    ff    bs-select-3    bs-select-3-1
    ff    bs-select-4    bs-select-4-1
Consignment Issue and indirectCustomer-agree
    Input Text    id=state    hgfgh
    Input Text    id=city    kjhg
    Input Text    id=address    lkjhg
    Input Text    id=neighborhood    jhgf
    Input Text    id=zip    lkjhg
    Click Element    id=indirectCustomer-agree
    Go Back
    Click Element    xpath://p[@class="firstline" and normalize-space(text())='Consignment Issue']
    Wait Until Element Is Visible    id=CName
    Input Text    id=CName    mnb
    Input Text    id=hospital    jhg
    Input Text    id=ContactName    jhgfc
    Input Text    id=Cemail    hgfghj
    Input Text    id=Cphone    nbvcvb
    Input Text    id=soldto    nbvcvb
    Input Text    id=shipto    nbvcvb
    Input Text    id=residentialQuarter    nbvcvb
    Input Text    id=city    nbvcvb
    Click Element    xpath://button[@aria-owns="bs-select-1"]
    Click Element    id=bs-select-1-2
    Input Text    id=zipCode    nbvcvb
    Input Text    id=datepickerform0    nbvcvb
    Input Text    id=POnum    01/06/2020
    Input Text    id=patient    nbvcvb
    Input Text    id=doctor    nbvcvb
    Input Text    id=datepickerform1    08/07/2025
    Click Element    xpath://button[@aria-owns="bs-select-2"]
    Wait Until Element Is Visible    id=bs-select-2-2    10s
    Click Element    id=bs-select-2-2
    Click Element    id=consignmentIssue-agree
    Click Element    id=consignment_back

close
    wait click    xpath://span[text()='Sign Out']
    Click Element    xpath://span[text()='Sign Out']


