@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Firefox.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
md "C:\Users\Public\Desktop\Teohook Setup
md "C:\Users\Public\Desktop\Teohook Setup\VPN
md "C:\Users\Public\Desktop\Teohook Setup\Latest GT
md "C:\Users\Public\Desktop\Teohook Setup\Important
md "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector
curl -O https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/DisablePasswordComplexity.ps1 > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector\capcihook.rar" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/capcihook.rar > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector\Extreme-Injector.exe" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/Extreme-Injector.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\Fast-Config.exe" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/FastConfigVPS_v5.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\VPN\Hide.Me-Setup.exe" https://hide.me/downloads/Hide.me-Setup-3.8.3.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\Latest GT\Latest Growtopia.exe" https://ubistatic-a.akamaihd.net/0098/31789/GrowtopiaInstaller.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\Important\items.dat" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/items.dat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\Important\crashfix.txt" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/crashfix.txt > out.txt 2>&1 
curl -o "C:\Users\Public\Desktop\Growtopia.zip" https://media.githubusercontent.com/media/Onurcreed4/updated-gt/main/Growtopia.zip > out.txt 2>&1
net user administrator capci@1234 /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels "
echo User: Administrator
echo Pass: capci@1234
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
ping -n 10 127.0.0.1 >nul
