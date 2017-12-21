
<#PSScriptInfo
.VERSION 1.0.1
.AUTHOR Roman Kuzmin
.COPYRIGHT (c) Roman Kuzmin
.TAGS Debug Test
.GUID d653eca4-056c-48ea-8b60-7f886d1a0dca
.LICENSEURI http://www.apache.org/licenses/LICENSE-2.0
.PROJECTURI https://github.com/nightroman/PowerShelf
#>

<#
.Synopsis
	Enables debugging on terminating errors.

.Description
	Enables breaking into the debugger on terminating errors automatically. The
	script works in any host with a debugger, in the console it breaks into the
	debugger, too. But troubleshooting is not that easy as in VS Code.

	VS Code scenario. Let the PowerShell extension start and open its terminal.
	For example, open a script. In the terminal invoke Debug-Error.ps1. Then
	invoke a script. As a result, on errors VS Code breaks into the debugger
	and opens the culprit script in the editor at the line with an error.

	Without parameters this command enables debugging on failures globally.
	Use the parameter Script in order to narrow the location of errors.
	Use the switch Off in order to stop debugging on errors.

	The command exploits updates of the variable StackTrace on terminating
	errors. Setting this variable breakpoint enables debugging on failures.

.Parameter Script
		Sets a breakpoint in each of the specified script files.
		See: Get-Help Set-PSBreakpoint -Parameter Script
.Parameter Action
		Specifies commands that run at each breakpoint.
		See: Get-Help Set-PSBreakpoint -Parameter Action
.Parameter Off
		Tells to stop debugging on errors.
		Other parameters are ignored.

.Link
	https://github.com/nightroman/PowerShelf
#>

param(
	[Parameter()]
	[string[]]$Script,
	[scriptblock]$Action,
	[switch]$Off
)

Get-PSBreakpoint -Variable StackTrace | Remove-PSBreakpoint

if (!$Off) {
	$param = if ($Script) {@{Script = $Script}} else {@{}}
	$null = Set-PSBreakpoint -Variable StackTrace -Mode Write -Action $Action @param
}
