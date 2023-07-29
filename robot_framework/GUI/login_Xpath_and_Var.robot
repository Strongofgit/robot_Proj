*** Variables ***
${txt_username}     //input[@name='username']
${txt_password}     //input[@name='password']
${loca_user}    //div[contains(@class,'oxd-sheet')]/p[1]
${loca_pass}    //div[contains(@class,'oxd-sheet')]/p[2]
${btn_login}    //button[normalize-space()='Login']
${notice_required}     //span[normalize-space()='Required']
${notice_invalid}      //p[text()='Invalid credentials']
${page_dashboard}    //h6[text()='Dashboard']
${dropdown}     //li[@class='oxd-userdropdown']
${option_logout}    //a[text()='Logout']

${correct_username}     Admin
${correct_password}     admin123
${empty}
${invalid_user}      Admin11