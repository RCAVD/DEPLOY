$hostname = hostname.exe
$logfile = "\\NAS01\d$\RDSHLogs\$($hostname)-userlogin.log_$(get-date -Format dd-MM-yyyy_hhmm).txt"
powershell "C:\Custom\GetUserLogins.ps1" > "$logfile" -append