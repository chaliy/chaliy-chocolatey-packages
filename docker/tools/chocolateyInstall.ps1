Install-ChocolateyPackage 'docker' 'exe' '/VERYSILENT' 'https://github.com/boot2docker/windows-installer/releases/download/v1.3.2/docker-install.exe'

Install-ChocolateyPath "$env:ProgramFiles\Boot2Docker for Windows\"
