*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com
${browser}  chrome
${txt_username}     //input[@name='username']
${txt_password}     //input[@name='password']
${loca_user}    //div[contains(@class,'oxd-sheet')]/p[1]
${loca_pass}    //div[contains(@class,'oxd-sheet')]/p[2]
#${username}
#${password}
${btn_login}    //button[normalize-space()='Login']
${required}     //span[normalize-space()='Required']
${invalid}      //p[text()='Invalid credentials']
${dashboard}      //h6[text()='Dashboard']