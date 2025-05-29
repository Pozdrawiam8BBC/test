@echo off
:: Usunięcie wpisu z autostartu
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "MicrosoftEdge" /f >nul 2>&1

:: Usunięcie pliku z tymczasowego folderu
del /q "%temp%\MicrosoftEdge.exe" >nul 2>&1

:: Usunięcie możliwego pliku BAT z pulpitu
del /q "%USERPROFILE%\Desktop\install.bat" >nul 2>&1

:: Informacja dla użytkownika
echo [OK] Złośliwy wpis usunięty z rejestru.
echo [OK] Pliki tymczasowe usunięte.
echo.
pause
exit
