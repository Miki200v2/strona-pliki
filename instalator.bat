@echo off
powershell -Command "Invoke-WebRequest https://download1519.mediafire.com/l08qyhacxfcg/qj8vc469jehqxq8/mody.zip -OutFile %cd%\mody.zip"
mkdir mody
powershell -command "Expand-Archive %cd%\mody.zip %cd%\mody"
echo.
echo.
mkdir "%appdata%\.minecraft\mods"
xcopy>nul %cd%\mody\* "%appdata%\.minecraft\mods" /S /Y
timeout>nul 1
del>nul %cd%\mody.zip /Q
rmdir>nul %cd%\mody /Q /S
echo.
echo.
echo.
echo Mody zainstalowane, skrypt zamknie sie za 5 sekund
timeout>nul 5
exit