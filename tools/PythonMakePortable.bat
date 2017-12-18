@PUSHD %~d0%~p0
@CD..

@CALL tools\PythonSetVariables.bat

@ECHO Modifying python tools portable...
@python tools\script\pythonMakePortable.py

@pause
