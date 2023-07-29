*** Settings ***
Resource    ../Config/resource.robot

*** Keywords ***
open website orangeHRM
    Open Browser    ${URL}  ${browser}
    Maximize Browser Window