@PUSHD %~d0%~p0

@ECHO ==========================================================
@ECHO %~nx0
@ECHO.
@ECHO 使い方：
@ECHO   このバッチファイルに、処理したいフォルダをドラッグ＆ドロップする
@ECHO ==========================================================
@ECHO.
@ECHO 何かキーを押すと処理を開始します
@PAUSE> nul

@CALL ..\scripts\PythonSetVariables.bat
@python "%~n0/main.py" %1

@pause
@POPD
