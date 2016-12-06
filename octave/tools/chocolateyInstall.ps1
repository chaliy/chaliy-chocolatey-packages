Install-ChocolateyPackage `
  -PackageName 'octave' `
  -InstallerType 'EXE'  `
  -Url 'https://ftp.gnu.org/gnu/octave/windows/octave-4.2.0-w32-installer.exe' `
  -Url64 'https://ftp.gnu.org/gnu/octave/windows/octave-4.2.0-w64-installer.exe' `
  -SilentArgs "/S" `
  -ValidExitCodes @(0)
