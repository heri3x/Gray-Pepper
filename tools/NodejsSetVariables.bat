@PUSHD %~d0%~p0
@CD..
@SET NODE_PATH=%CD%\node_modules
@CALL %CD%\extras\nodejs\nodevars.bat
@POPD
