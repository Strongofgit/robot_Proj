*** Settings ***
Resource    ../Config/resource.robot
*** Keywords ***

open website orangeHRM
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window

input username and password
   [Arguments]    ${username}   ${password}
    Enter Text    ${txt_username}  ${username}
    Enter Text    ${txt_password}  ${password}

click login
    Click Button    ${btn_login}

verify username and password required
    Wait Until Element Is Visible    ${notice_required}

invalid login verification
    Wait Until Element Is Visible    ${notice_invalid}

verify login success
    Wait Until Element Is Visible    ${page_dashboard}

clear textbox username and password
    Clear Element Text    ${txt_username}
    Clear Element Text    ${txt_password}

logout
    Click Element    ${dropdown}
    Click Element    ${option_logout}
