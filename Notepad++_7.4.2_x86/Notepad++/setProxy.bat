@echo off
set r="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
set s=104.160.42.89:8080
reg add %r% /v ProxyEnable /t REG_DWORD /d 1 /f
reg add %r% /v ProxyServer /t REG_SZ /d %s% /f 
reg add %r% /v ProxyOverride /t REG_SZ  /d ^<local^> /f