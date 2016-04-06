$packageArgs = @{
  $PackageName = 'miniconda'
  $InstallerType = 'EXE'
  $Url = 'https://repo.continuum.io/miniconda/Miniconda2-4.0.5-Windows-x86.exe'
  $Url64 = 'https://repo.continuum.io/miniconda/Miniconda2-4.0.5-Windows-x86_64.exe'
  $Args = "/S"
  $ValidExitCodes = @(0)
  checksum      = 'c35402d272be8d410f4e8fd62905325f'
  checksumType  = 'md5'
  checksum64    = '6b848b2f138376fedca564edefb21096'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs
