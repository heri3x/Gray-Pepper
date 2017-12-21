@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\node_modules\npm-windows-upgrade\bin\npm-windows-upgrade.js" %*
) ELSE (
  @SETLOCAL
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\node_modules\npm-windows-upgrade\bin\npm-windows-upgrade.js" %*
)