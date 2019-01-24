@echo off

REM Scriptella scripts to export data from PowerSchool
REM into format that is used by Health Office Anywhere (Nurses)
c:
cd \SM_Exports\ETL_Scripts
call C:\Scriptella\bin\scriptella.bat HOA_Students.xml
call C:\Scriptella\bin\scriptella.bat HOA_Vaccines.xml
call C:\Scriptella\bin\scriptella.bat HOA_Contacts.xml

REM Upload CSV files to HOA's FTP Server
c:
cd \SM_Exports\ETL_Exports\HOA
C:\Users\ps\Downloads\WinSCPPortable\App\winscp\WinSCP.com /console /command "option batch abort" "option confirm off" "open user:password@(ip address)" "put students.csv" "put vaccines.csv" "put contacts.csv" "exit"