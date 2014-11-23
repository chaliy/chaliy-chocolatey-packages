param(
    [ValidateSet('rust', 'gnuplot', 'thrift', 'openldap', 'docker', 'octave')]
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$Package,
    [switch]$Confirm=$True
)

#nuget.exe setApiKey YOURS-VERY-OWN-API-KEY -Source http://chocolatey.org/

$here = (Split-Path -parent $MyInvocation.MyCommand.Definition)

pushd

try {

    cd $here/$Package

    rm *.nupkg
    cpack

    gci *.nupkg | %{
        $PackagePath = $_
        if ($Confirm){
           $ConfirmText = @"
Confirm
Are you sure you want to push $PackagePath to chocolatey?
"@
            Write-Host $ConfirmText
            $answer = Read-Host @"
[Y] Yes [N] No [?] Help (default is "N")
"@
            switch ($Answer)
            {
                "Y" {
                    Write-Host Push $PackagePath
                    cpush $PackagePath
                    rm $PackagePath
                }
                "" { }
                "N" {  }
                "?" { Write-Host @"
Y - Continue with only the next step of the operation.
N - Skip this operation and proceed with the next operation.
"@
                }
            }
        }
    }
} finally {
    popd
}

git add -A
