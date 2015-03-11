$Url = 'https://static.rust-lang.org/dist/rust-1.0.0-alpha.2-i686-pc-windows-gnu.exe'
$Url64 = 'https://static.rust-lang.org/dist/rust-1.0.0-alpha.2-x86_64-pc-windows-gnu.exe'

Install-ChocolateyPackage 'rust' 'exe' '/VERYSILENT' "$Url" "$Url64"
