:pycheck1
cd "%HOMEDRIVE%\Users\%username%\AppData\Local\Programs"
if NOT exist "Python" goto pycheck2
cd "%HOMEDRIVE%\Users\%username%\AppData\Local\Programs\Python"
if NOT exist "Python311" goto pycheck2
goto py4

:pycheck2
start https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe
cd "%HOMEDRIVE%\Users\%username%\Download"
if exist "python-3.11.5-amd64.exe" goto pydownload
goto pycheck

:pydownload
cd "%HOMEDRIVE%\Users\%username%\Download"
start python-3.11.5-amd64.exe
goto py2

:py2
cd "%HOMEDRIVE%\Users\%username%\AppData\Local\Programs"
if exist "Python" goto py3
goto py2

:py3
cd "%HOMEDRIVE%\Users\%username%\AppData\Local\Programs\Python"
if exist "Python311" goto py4
goto py3

:py4
cls
pip install keyboard >nul
pip install time >nul
pip install requests >nul
pip install threading >nul
goto py5

:py5
cd %temp%
echo X=MsgBox("Requirements has been downloaded start build.bat", 0+64, "Requirements.bat") >> msg1.vbs
start msg1.vbs
timeout /t 1 /nobreak >nul
del msg1.vbs
exit