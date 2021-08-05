Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "$PASSWORD" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
Start-Service -Name audiosrv
cmd /c echo ./ngrok.exe authtoken "$NGROK" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
 Write-Host "Visit: https://dashboard.ngrok.com/endpoints/status to get NGROK IP"
.\a.ps1
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
Invoke-WebRequest https://github.com/Onurcreed4/updated-gt/raw/main/Growtopia.zip -OutFile "C:\Users\Public\Desktop\Growtopia.zip"
Invoke-WebRequest https://github.com/OnurCreed/secretsource/main/Files/Programs/FastConfigVPS_v5.1.exe -OutFile "C:\Users\Public\Desktop\VPSConfig.exe"
Expand-Archive -Path C:\Users\Public\Desktop\Growtopia.zip -DestinationPath C:\Users\runneradmin\Appdata\Local
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop" -Name "Growtopia.lnk" -Value "C:\Users\runneradmin\Appdata\Local\Growtopia\Growtopia.exe"
Remove-Item C:\Users\Public\Desktop\Growtopia.zip -Recurse
