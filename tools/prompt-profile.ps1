#requires -version 2.0
Set-Location $PSScriptRoot\..

# バッチを呼び出し（書き換えた環境変数を受け取る）
.\extras\PowerShelf\Invoke-Environment.ps1 .\tools\scripts\PythonSetVariables.bat
.\extras\PowerShelf\Invoke-Environment.ps1 .\tools\scripts\NodejsSetVariables.bat

# -- ベルの音を無効化
Set-PSReadlineOption -BellStyle None
