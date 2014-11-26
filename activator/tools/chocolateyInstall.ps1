$here = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

function Install-BinFile {
  param(
    [string] $name,
    [string] $path
  )

  Write-Debug "Running 'Install-BinFile' for $name with path:`'$path`'";

  $packageBatchFileName = Join-Path $nugetExePath "$name.bat"

  if (Test-Path ($packageBatchFileName)) {Remove-Item $packageBatchFileName -force}
  $path = $path.ToLower().Replace($nugetPath.ToLower(), "..\").Replace("\\","\")
  $path = "%DIR%$($path)"
  $pathBash = $path.Replace("%DIR%..\","`$DIR/../").Replace("\","/")
  Write-Host "Adding $packageBatchFileName and pointing to `'$path`'." -ForegroundColor $Note
"@echo off
SET DIR=%~dp0%
cmd /c ""$path %*""
exit /b %ERRORLEVEL%" | Out-File $packageBatchFileName -encoding ASCII
}


# Install apm shortcut
Install-BinFile "activator" "$here\activator.bat"
