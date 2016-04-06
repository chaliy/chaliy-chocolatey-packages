$packageArgs = @{
  $PackageName = 'miniconda3'
  $InstallerType = 'EXE'
  $Url = 'https://repo.continuum.io/miniconda/Miniconda3-4.0.5-Windows-x86.exe'
  $Url64 = 'https://repo.continuum.io/miniconda/Miniconda3-4.0.5-Windows-x86_64.exe'
  $Args = "/S"
  $ValidExitCodes = @(0)
  checksum      = '03c6989a577a4979582082fe80a01b3c'
  checksumType  = 'md5'
  checksum64    = '333506276458488ec8d1d928e3fa9ac4'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs
