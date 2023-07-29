*** Settings ***
Resource    ../../Config/resource.robot
Library     DataDriver      Data.xlsx     sheet_name=Sheet1

Suite Setup     Open Browser
Suite Teardown  Close Browser
Test Template   Invalid Login

*** Test Cases ***
LoginTestwithExcel using ${username}    ${password}


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    enter username    $username
    enter password    $password
    click login
    check dashboard
    check invalid login
    check required username and password