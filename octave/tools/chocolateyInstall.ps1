if(-not($Env:ChocolateyBinRoot)) {
  $BinRoot = "$Env:ChocolateyInstall\bin"
} else {
  $BinRoot = $Env:ChocolateyBinRoot
}
if (-not($BinRoot -imatch "^\w:")) {
    $BinRoot = Join-Path $Env:SystemDrive $BinRoot
}

$packageName = 'Octave'
$installerType = 'EXE'
$url = 'http://downloads.sourceforge.net/project/octave/Octave%20Windows%20binaries/Octave%203.6.4%20for%20Windows%20Microsoft%20Visual%20Studio/octave-3.6.4-vs2010-setup.exe'
$url64 = $url
$silentArgs = "/S /D=$($BinRoot)Octave\"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

Install-ChocolateyPath "$($BinRoot)Octave\" 'Machine'
