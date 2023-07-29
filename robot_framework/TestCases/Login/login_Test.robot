*** Settings ***
Resource    ../../Config/resource.robot
# thêm suite set up vs test set up tear down
Suite Setup    Open Website OrangeHRM
Suite Teardown    Close All Browsers

*** Test Cases ***
login test 1
    [Tags]    test login success
    Input Username And Password    ${correct_username}    ${correct_password}
    Click Login    ${btn_login}
    Verify Login Success
    [Teardown]    Logout

login test 2
    [Tags]    test login required username or password
    Input Username And Password     ${correct_username}  ${empty}
    Click Login
    Verify Username And Password Required
    [Teardown]    Clear Textbox Username And Password

login test 3
    [Tags]    test login invalid
    Input Username And Password    ${invalid_user}   ${correct_password}
    Click Login
    Invalid Login Verification
    [Teardown]    Close Browser