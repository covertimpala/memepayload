@echo off
FOR /F "tokens=*" %%g IN ('python --version') do (SET string=%%g)
set "versionn=Python 3"
echo %string%
if %string:~0,1%==P (echo yes) else (python3 & timeout /t 5 /nobreak & start pressenter.vbs)
until [[ $string != *"Python 3"* ]]
start payload.pyw
exit