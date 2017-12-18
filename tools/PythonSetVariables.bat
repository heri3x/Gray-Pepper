@PUSHD %~d0%~p0
@CD..
@ECHO Setting python env variables...
@SET PATH=%CD%\extras\python3;%CD%\extras\python3\Scripts;%PATH%
@POPD
