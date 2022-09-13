Hosted File:
Set-Localuser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "@rdpbyav321" -Force)
Get-Localuser -Name "Administrator" | Enable-LocalUser
Invoke-WebRequest https://bin.equinox.io/c/4vmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "2EhFV4yPKp7lm0yIVgYiXI2rtBW_5aEWBYpJuuEj9AMk76cQa" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1
