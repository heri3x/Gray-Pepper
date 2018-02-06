#requires -version 2.0

function waitAnyKey()
{
    Write-Host "Press any key to continue..."
    $x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

function execCommand([string]$strCmd)
{
    $info = New-Object System.Diagnostics.ProcessStartInfo
    $info.FileName = [System.Environment]::GetEnvironmentVariable("ComSpec")
    $info.Arguments = "/c " + $strCmd
    $info.UseShellExecute = $false
    $info.RedirectStandardOutput = $true
    $info.RedirectStandardError = $true
    
    $proc = [System.Diagnostics.Process]::Start($info)
    $proc.WaitForExit()
    
    return @{
        ExitCode=$proc.ExitCode;
        StandardOutput=$proc.StandardOutput.ReadToEnd();
        StandardError=$proc.StandardError.ReadToEnd();
        StartTime=$proc.StartTime;
        ExitTime=$proc.ExitTime;
    }
}
