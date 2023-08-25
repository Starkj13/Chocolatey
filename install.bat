@echo off

echo This will first install chocolatey, then other tools
echo .
echo Browse https://chocolatey.org/packages for packages
echo .
rem Checks if bat file is started as admin
net session >nul 2>&1
if %errorlevel% == 0 (
    echo This batch file is running with admin privileges.
) else (
    echo This batch file is NOT running with admin privileges.
    pause
    exit
)
pause
echo .

rem Installs Chocolatey
powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
pause

echo Now chocolatey should be ready and we can go ahead
echo .
pause



choco install adobereader -y
choco install googlechrome -y
choco install winrar -y
choco install discord -y
choco install vlc -y
choco install javaruntime -y
choco install jre8 -y
choco install dotnet -y
choco install dotnetcore-sdk -y
choco install python3 -y
choco install vscode -y
choco install visualstudio2022community -y
choco install googledrive -y
choco install vnc-viewer -y
choco install wiztree -y
choco install git -y
choco install firefoxesr -y
choco install powertoys -y
choco install virtualbox -y
choco install github-desktop -y
choco install nearby-share -y