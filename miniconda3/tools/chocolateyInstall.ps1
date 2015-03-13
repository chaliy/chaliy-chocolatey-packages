$BinRoot = Get-BinRoot

$PackageName = 'miniconda3'
$InstallerType = 'EXE'
$Url = 'https://repo.continuum.io/miniconda/Miniconda3-3.9.1-Windows-x86.exe'
$Url64 = 'https://repo.continuum.io/miniconda/Miniconda3-3.9.1-Windows-x86_64.exe'
$Args = "/InstallationType=AllUsers /S /D=$BinRoot\Miniconda3\"
$ValidExitCodes = @(0)

Install-ChocolateyPackage "$PackageName" "$InstallerType" "$Args" "$Url" "$Url64"  -validExitCodes $ValidExitCodes
