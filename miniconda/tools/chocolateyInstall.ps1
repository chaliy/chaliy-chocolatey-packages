$BinRoot = Get-BinRoot

$PackageName = 'Miniconda'
$InstallerType = 'EXE'
$Url = 'http://repo.continuum.io/miniconda/Miniconda3-3.7.0-Windows-x86.exe'
$Url64 = 'http://repo.continuum.io/miniconda/Miniconda3-3.7.0-Windows-x86_64.exe'
$Args = "/InstallationType=AllUsers /S /D=C:\Miniconda\"
$ValidExitCodes = @(0)

Install-ChocolateyPackage "$PackageName" "$InstallerType" "$Args" "$Url" "$Url64"  -validExitCodes $ValidExitCodes
