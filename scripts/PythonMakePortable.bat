@PUSHD %~d0%~p0
@CD..

@CALL scripts\PythonSetVariables.bat

@ECHO Modifying python tools to be portable...
@python scripts\pythonMakePortable.py

@pause
