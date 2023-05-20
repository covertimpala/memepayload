@echo off
set string = python --version
if [[ $string != *"Python 3"* ]]; then
    python3
fi
until [[ $string != *"Python 3"* ]]
start payload.pyw
exit