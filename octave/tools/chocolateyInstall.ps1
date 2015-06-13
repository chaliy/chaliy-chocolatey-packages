$packageName = 'Octave'
$installerType = 'EXE'
$url = 'https://ftp.gnu.org/gnu/octave/windows/octave-4.0.0_0-installer.exe'
$url64 = $url
$silentArgs = "/S"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
