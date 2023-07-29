*** Settings ***
Resource    ../Config/resource.robot

*** Keywords ***
enter text
    [Arguments]    ${locator}   ${value}
    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${value}

click element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

click button
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

get text
    [Arguments]    ${locator}
    ${text}     Get Text    ${locator}
    [Return]    ${text}