$PackageName = 'rust'
$InstallerType = 'msi'
$Url = 'https://static.rust-lang.org/dist/rust-1.5.0-i686-pc-windows-gnu.msi'
$Url64 = 'https://static.rust-lang.org/dist/rust-1.5.0-x86_64-pc-windows-gnu.msi'
$SilentArgs = '/quiet'
$ValidExitCodes = @(0,3010)

Install-ChocolateyPackage "$PackageName" "$InstallerType" "$SilentArgs" "$Url" "$Url64" -validExitCodes $ValidExitCodes
