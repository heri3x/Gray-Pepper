@PUSHD %~d0%~p0
@CD..\..
@SET PATH=%CD%\extras\python3;%CD%\extras\python3\Scripts;%PATH%
@python.exe --version
@POPD
