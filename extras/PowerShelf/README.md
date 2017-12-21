
# PowerShelf - PowerShell Scripts

## Introduction

PowerShell tools for various tasks implemented as scripts, mostly standalone.

## Script List

* *Add-Debugger.ps1* - Adds a script debugger to PowerShell.
* *Add-Path.ps1* - Adds a directory to an environment path variable.
* *Assert-SameFile.ps1* - Compares the sample and result files.
* *Debug-Error.ps1* - Enables debugging on terminating errors.
* *Export-Binary.ps1* - Exports objects using binary serialization.
* *Format-Chart.ps1* - Formats output as a table with the last chart column.
* *Format-High.ps1* - Formats output by columns with optional custom item colors.
* *Import-Binary.ps1* - Imports objects using binary serialization.
* *Invoke-Environment.ps1* - Invokes a command and imports its environment variables.
* *Invoke-PowerShell.ps1* - Invokes PowerShell of the currently running version.
* *Measure-Command2.ps1* - Measure-Command with several iterations and progress.
* *Measure-Property.ps1* -  Counts properties grouped by names and types.
* *Save-NuGetTool.ps1* - Downloads a NuGet package and extracts /tools.
* *Set-ConsoleSize.ps1* - Sets the current console size, interactively by default.
* *Show-Color.ps1* - Shows all color combinations, color names and codes.
* *Show-Coverage.ps1* - Converts to HTML and shows script coverage data.
* *Submit-Gist.ps1* - Submits a file to its GitHub gist repository.
* *Sync-Directory.ps1* - Syncs two directories with some interaction.
* *Test-Debugger.ps1* - Tests PowerShell debugging with breakpoints.
* *Trace-Debugger.ps1* - Provides script tracing and coverage data collection.
* *Update-Gist.ps1* - Updates or creates a gist file using Invoke-RestMethod.
* *Watch-Command.ps1* - Invokes a command repeatedly and shows its one screen output.
* *Watch-Directory.ps1* - File change watcher and handler.

## Get Scripts

The scripts are distributed as two NuGet packages:

[PowerShelf](https://www.nuget.org/packages/PowerShelf) (all scripts).
Download it to the current location as the directory *"PowerShelf"* by this PowerShell command:

    Invoke-Expression "& {$((New-Object Net.WebClient).DownloadString('https://github.com/nightroman/PowerShelf/raw/master/Save-NuGetTool.ps1'))} PowerShelf"

[NuGetDebugTools](https://www.nuget.org/packages/NuGetDebugTools) (debugging).
Download it to the current location as the directory *"NuGetDebugTools"* by this PowerShell command:

    Invoke-Expression "& {$((New-Object Net.WebClient).DownloadString('https://github.com/nightroman/PowerShelf/raw/master/Save-NuGetTool.ps1'))} NuGetDebugTools"

Alternatively, get them by NuGet tools or download
[PowerShelf](http://nuget.org/api/v2/package/PowerShelf) or
[NuGetDebugTools](http://nuget.org/api/v2/package/NuGetDebugTools).
In the latter case save as *".zip"* and unzip. Use the package subdirectory *"tools"*.

***
