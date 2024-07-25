@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)

echo main code here
echo %cd%
dism /online /enable-feature /featurename:netfx3 /source:"%~dp0sxs" /limitaccess

pause
