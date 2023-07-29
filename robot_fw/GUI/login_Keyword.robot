*** Settings ***
Resource    ../Config/resource.robot

*** Keywords ***
enter username
   [Arguments]    ${username}
    Wait And Enter Text    ${txt_username}  ${username}

enter password
    [Arguments]    ${password}
    Wait And Enter Text    ${txt_password}  ${password}

click login
    Wait And Click Button    ${btn_login}

check required username and password
    Wait And Find Element    ${required}

check invalid login
    Wait And Find Element    ${invalid}
    
check dashboard
    wait and find element    ${dashboard}

