$packageName = 'Octave'
$installerType = 'EXE' 
$url = 'http://downloads.sourceforge.net/project/octave/Octave%20Windows%20binaries/Octave%203.6.4%20for%20Windows%20Microsoft%20Visual%20Studio/octave-3.6.4-vs2010-setup.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

$addToPath = Join-Path $env:HOMEDRIVE `\Software\Octave-3.6.4\bin`
Install-ChocolateyPath $addToPath 'Machine' 