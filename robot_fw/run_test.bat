@echo off

REM Run test case trong thư mục Login
robot --output-dir Reporting --report report/report.html --output log/output.xml --log log/log.html TestCases/Login/

robot -t "LoginTestwithExcel" TestCases/Login/login_Test.robot