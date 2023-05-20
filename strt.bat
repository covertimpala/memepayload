@echo off
set "string=python --version"
set "versionn=Python 3"
If /I Not "%string%"=="!string:%versionn%=!" (Echo Yes) Else Echo No
python3
fi
until [[ $string != *"Python 3"* ]]
start payload.pyw
exit