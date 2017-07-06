@echo off
set r="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
set s=139.129.30.243:1234
reg add %r% /v ProxyEnable /t REG_DWORD /d 1 /f
reg add %r% /v ProxyServer /t REG_SZ /d %s% /f 
reg add %r% /v ProxyOverride /t REG_SZ  /d ^<local^> /f