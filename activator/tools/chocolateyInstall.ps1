$here = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

# Install apm shortcut
Install-BinFile "activator" "$here\activator.bat"
