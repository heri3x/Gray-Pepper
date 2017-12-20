@PUSHD %~d0%~p0
@CD..\..

@SET NODE_PATH=%CD%\node_modules
@SET PATH=%NODE_PATH%\electron\dist;%PATH%

@CALL %CD%\extras\nodejs\nodevars.bat
@POPD
