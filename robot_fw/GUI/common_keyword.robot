*** Settings ***
Resource    ../Config/resource.robot

*** Keywords ***
wait and enter text
    [Arguments]    ${locator}   ${value}
    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${value}

wait and click element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

wait and click button
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

wait and find element
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}

wait and get text
    [Arguments]    ${locator}
    ${text}     Get Text    ${locator}
    [Return]    ${text}