set WS=%SystemRoot%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy
takeown /f %WS% /r /a > nul
icacls %WS% /reset /t > nul
C:\Custom\PsExec.exe rmdir /s /q %SystemRoot%\SystemApps\Microsoft.Windows.SecHealthUI_cw5n1h2txyewy
REG Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Appx\AppxAllUserStore\InboxApplications\Microsoft.Windows.SecHealthUI_10.0.17763.3232_neutral__cw5n1h2txyewy" /f