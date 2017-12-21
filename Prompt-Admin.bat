@SET BOOT_SCRIPT_FILE=%~d0%~p0tools\prompt-profile.ps1

@REM -- PowerShellコンソールを開く
@REM START PowerShell.exe -NoExit -NoProfile -ExecutionPolicy Bypass -File "%BOOT_SCRIPT_FILE%" %1 %2 %3 %4 %5 %6 %7 %8 %9

@REM -- 管理者権限でPowerShellコンソールを開く
@PowerShell.exe -NoProfile -Command "Start-Process PowerShell.exe -Verb RunAs -ArgumentList '-NoExit -NoProfile -ExecutionPolicy Bypass -File \"%BOOT_SCRIPT_FILE%\" %1 %2 %3 %4 %5 %6 %7 %8 %9'"

@REM -- DOSコマンドプロンプトを開く
@REM @cmd /k
