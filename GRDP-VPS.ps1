Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}

if ($args[1]) { WMIC computersystem where caption=$(hostname) rename $args[1] }
sc start audiosrv
sc config Audiosrv start= auto
New-Item -Path "C:\Users\Public\Desktop" -Name "Teohook Setup" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop\Teohook Setup" -Name "VPN" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop\Teohook Setup" -Name "Latest GT" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop\Teohook Setup" -Name "Important" -ItemType Directory
New-Item -Path "C:\Users\Public\Desktop\Teohook Setup" -Name "DLL and Injector" -ItemType Directory
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/capcihook.rar -OutFile "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector\capcihook.rar"
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/Extreme-Injector.exe -OutFile "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector\Extreme-Injector.exe"
Invoke-WebRequest https://hide.me/downloads/Hide.me-Setup-3.8.3.exe -OutFile "C:\Users\Public\Desktop\Teohook Setup\VPN\Hide.me-Setup.exe"
Invoke-WebRequest https://ubistatic-a.akamaihd.net/0098/31789/GrowtopiaInstaller.exe -OutFile "C:\Users\Public\Desktop\Teohook Setup\Latest GT\GrowtopiaInstaller.exe"
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/items.dat -OutFile "C:\Users\Public\Desktop\Teohook Setup\Important\items.dat"
Invoke-WebRequest https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/crashfix.txt -OutFile "C:\Users\Public\Desktop\Teohook Setup\Important\crashfix.txt"
Invoke-WebRequest https://ubistatic-a.akamaihd.net/0098/31789/GrowtopiaInstaller.exe -OutFile "C:\Users\Public\Desktop\GrowtopiaInstaller.exe"
Start-Process -Wait -FilePath C:\Users\Public\Desktop\GrowtopiaInstaller.exe -Argument "/silent" -PassThru

