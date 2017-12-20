@PUSHD %~d0%~p0
@CD..

@CALL tools\scripts\PythonSetVariables.bat

@ECHO Modifying python tools to be portable...
@python tools\scripts\pythonMakePortable.py

@pause
