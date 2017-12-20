@CALL tools\scripts\PythonSetVariables.bat
@CALL tools\scripts\NodejsSetVariables.bat
@ECHO.

@SET BOOT_SCRIPT_FILE=%~d0%~p0tools\console_profile.ps1

@REM -- PowerShellコンソールを開く
START PowerShell.exe -NoExit -NoProfile -ExecutionPolicy Bypass -File "%BOOT_SCRIPT_FILE%" %1 %2 %3 %4 %5 %6 %7 %8 %9

@REM -- 管理者権限でPowerShellコンソールを開く
@REM @PowerShell.exe -NoProfile -Command "Start-Process PowerShell.exe -Verb RunAs -ArgumentList '-NoExit -NoProfile -ExecutionPolicy Bypass -File \"%BOOT_SCRIPT_FILE%\" %1 %2 %3 %4 %5 %6 %7 %8 %9'"

@REM -- DOSコマンドプロンプトを開く
@REM @cmd /k
