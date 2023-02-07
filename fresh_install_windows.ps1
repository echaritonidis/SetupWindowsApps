Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;

if ( -Not (Get-Command choco.exe -ErrorAction SilentlyContinue)) {
    # install chocolatey
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

$packagesToInstall = 
'visualstudio2022community',
'vscode',
'heidisql',
'dotnet-sdk',
'postman',
'7zip',
'microsoft-edge',
'notepadplusplus',
'git',
'curl',
'office-tool',
'mp3tag',
'transmission',
'vlc',
'imageresizerapp',
'recuva',
'Gpg4win';

# Install packages - one by one
ForEach ($package in $packagesToInstall) {
    iex 'choco install $package -y';
}
