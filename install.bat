@echo off

echo This will first install chocolatey, then other tools
echo .
echo Browse https://chocolatey.org/packages for packages
echo .
echo Ensure that your cmd.exe runs as Administrator
echo .
echo If at university, disable any proxy in the Internet Explorer Network settings.
echo .
pause
echo .

powershell Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
pause

echo Now chocolatey should be ready and we can go ahead
echo .
pause

rem enable clicking on choco:// links in the browser
rem https://community.chocolatey.org/packages/choco-protocol-support
rem choco install choco-protocol-support

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
choco install git.install -y
choco install firefoxesr -y
choco install powertoys -y
choco install virtualbox -y
choco install github-desktop -y