$PackageName = "sts"
try {
  $Url = 'http://download.springsource.com/release/STS/3.6.3/dist/e4.4/spring-tool-suite-3.6.3.RELEASE-e4.4.1-win32-x86_64.zip'

  $BinRoot = Get-BinRoot
  $InstallDir = Join-Path "$BinRoot" "$PackageName"

  Install-ChocolateyZipPackage $PackageName $Url $InstallDir
  
  Write-ChocolateySuccess $PackageName
} catch {
  Write-ChocolateyFailure $PackageName $($_.Exception.Message)
  throw
}
