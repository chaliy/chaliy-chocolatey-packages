# https://github.com/chaliy/chaliy-chocolatey-packages/

Install-ChocolateyPackage 'boot2docker' 'exe' '/VERYSILENT' 'https://github.com/boot2docker/windows-installer/releases/download/v1.6.2/docker-install.exe'

Install-ChocolateyPath "$env:ProgramFiles\Boot2Docker for Windows\"
