***Settings***
Library    SeleniumLibrary
Variables     ../variables/userdata.py
***keywords***
Open Login Page
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    id:j_username    timeout=20s
Login With Credentials
    [Arguments]    ${mail}=${user_mail}    ${pass}=${password}
    Input Text       id:j_username    ${mail}
    Input Password   id:j_password    ${pass}
    Click Button     id:loginButton