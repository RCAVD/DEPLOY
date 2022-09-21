#### STEP 1 - Install Brother Printers$scriptActionStartTime = get-dateWrite-host ('*** STEP 1 : Install Brother Printers [ '+(get-date) + ' ]')
Start-Sleep -Seconds 5########################################################### Deploy Brothers Printer ####################################################$printDriverName = "Brother HL-J6100DW Printer"Add-Printer -Name "Brother HL-J6100DW Printer" -PortName BINARY_P1 -DriverName $printDriverName
$scriptActionDuration = (get-date) - $scriptActionStartTime
Write-Host "STEP 1 : Install Brother Printer exection time: "$scriptActionDuration.Minutes "Minute(s), " $scriptActionDuration.seconds "Seconds and " $scriptActionDuration.Milliseconds "Milleseconds"

#### STEP 2 - Install Zebra Printers$scriptActionStartTime = get-date
Write-host ('*** STEP 2 : Install Zebra Printers [ '+(get-date) + ' ]')
Start-Sleep -Seconds 5########################################################### Deploy Zebra Printer ####################################################$printDriverName = "ZDesigner GK420d"Add-Printer -Name "GK420-MagDN" -PortName IP_10.0.0.192 -DriverName $printDriverNameAdd-Printer -Name "GK420-MagIDP" -PortName IP_10.0.0.244 -DriverName $printDriverName$scriptActionDuration = (get-date) - $scriptActionStartTime
Write-Host "STEP 2 : Install Zebra Printers exection time: "$scriptActionDuration.Minutes "Minute(s), " $scriptActionDuration.seconds "Seconds and " $scriptActionDuration.Milliseconds "Milleseconds"

#### STEP 3 - Install HP Printers$scriptActionStartTime = get-date
Write-host ('*** STEP 3 : Install UP Printers Drivers [ '+(get-date) + ' ]')
Start-Sleep -Seconds 5########################################################### Deploy HP Printers ####################################################$printDriverName = "HP Universal Printing PCL 6"Add-Printer -Name "HP500-DN" -PortName HP500DN_1-IP_10.0.0.245 -DriverName $printDriverNameAdd-Printer -Name "HP500-DN STD" -PortName HP500DN_2-IP_10.0.0.245 -DriverName $printDriverNameAdd-Printer -Name "HP501-IDP" -PortName HP501_1-IP_10.0.0.195 -DriverName $printDriverNameAdd-Printer -Name "HP501-IDP STD" -PortName HP501_2-IP_10.0.0.195 -DriverName $printDriverNameAdd-Printer -Name "HP-CHR" -PortName IP_10.0.0.107 -DriverName $printDriverName$printDriverName = "HP Universal Printing PCL 6 (v6.3.0)"Add-Printer -Name "HP603N" -PortName IP_10.0.0.246 -DriverName $printDriverName$printDriverName = "HP Universal Printing PCL 6 (v6.8.0)"Add-Printer -Name "HP-M506" -PortName IP_10.0.0.196 -DriverName $printDriverName$scriptActionDuration = (get-date) - $scriptActionStartTime
Write-Host "STEP 3 : Install HP Printers exection time: "$scriptActionDuration.Minutes "Minute(s), " $scriptActionDuration.seconds "Seconds and " $scriptActionDuration.Milliseconds "Milleseconds"

#### STEP 4 - Install TOSHIBA Printers$scriptActionStartTime = get-date
Write-host ('*** STEP 4 : Install TOSHIBA Printers [ '+(get-date) + ' ]')
Start-Sleep -Seconds 5########################################################### Deploy TOSHIBA Printers ####################################################$printDriverName = "TOSHIBA B-FV4 (300 dpi)"Add-Printer -Name "TEC-CHR" -PortName IP_10.0.0.78 -DriverName $printDriverName$printDriverName = "TOSHIBA B-EX4T1 (305 dpi)"Add-Printer -Name "TEC-MagDN" -PortName IP_10.0.0.242 -DriverName $printDriverName$printDriverName = "TEC B-EV4 (300 dpi)"Add-Printer -Name "TEC-MagIDP" -PortName IP_10.0.0.240 -DriverName $printDriverName
$scriptActionDuration = (get-date) - $scriptActionStartTime
Write-Host "STEP 4 : Install TOSHIBA Printers exection time: "$scriptActionDuration.Minutes "Minute(s), " $scriptActionDuration.seconds "Seconds and " $scriptActionDuration.Milliseconds "Milleseconds"

#### STEP 5 - Install Konica Printers$scriptActionStartTime = get-date
Write-host ('*** STEP 5 : Install Konica Printers [ '+(get-date) + ' ]')
Start-Sleep -Seconds 5 ########################################################### Deploy Konica Printers ####################################################$printDriverName = "KONICA MINOLTA C360SeriesPCL"Add-Printer -Name "Konica-Dispolab" -PortName Konica-Dispolab_1-IP_10.0.0.190 -DriverName $printDriverNameAdd-Printer -Name "Konica-Dispolab STD" -PortName Konica-Dispolab_2-IP_10.0.0.190 -DriverName $printDriverName
$printDriverName = "KONICA MINOLTA C287SeriesPCL"Add-Printer -Name "Konica-Identipack" -PortName Konica-Identipack_1-IP_10.0.0.252 -DriverName $printDriverNameAdd-Printer -Name "Konica-Identipack STD" -PortName Konica-Identipack_2-IP_10.0.0.252 -DriverName $printDriverName
$scriptActionDuration = (get-date) - $scriptActionStartTime
Write-Host "STEP 5 : Install TOSHIBA Printers exection time: "$scriptActionDuration.Minutes "Minute(s), " $scriptActionDuration.seconds "Seconds and " $scriptActionDuration.Milliseconds "Milleseconds"

#### STEP 6 - Set Rights on the Printers$scriptActionStartTime = get-date
Write-host ('*** STEP 6 : Set Rights on the Printers [ '+(get-date) + ' ]')
Start-Sleep -Seconds 5
#SET DomainUsers on the printers
#https://scriptingetc.wordpress.com/2019/10/04/set-printer-permissions-through-powershell-command/

Set-Printer -Name "HP500-DN" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)" 
Set-Printer -Name "GK420-MagIDP" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)" 
Set-Printer -Name "HP500-DN STD" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)" 
Set-Printer -Name "HP501-IDP" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"
Set-Printer -Name "HP501-IDP STD" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"  
Set-Printer -Name "HP603N" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"  
Set-Printer -Name "HP-CHR" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"  
Set-Printer -Name "HP-M506" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"  
Set-Printer -Name "Konica-Dispolab" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"  
Set-Printer -Name "Konica-Dispolab STD" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"  
Set-Printer -Name "Konica-Identipack" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"  
Set-Printer -Name "Konica-Identipack STD" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)" 
Set-Printer -Name "TEC-CHR" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"   
Set-Printer -Name "TEC-MagDN" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"
Set-Printer -Name "TEC-MagIDP" -PermissionSDDL "G:SYD:(A;;LCSWSDRCWDWO;;;DU)(A;OIIO;RPWPSDRCWDWO;;;DU)(A;OIIO;GA;;;CO)(A;OIIO;GA;;;AC)(A;;SWRC;;;WD)(A;CIIO;GX;;;WD)(A;;SWRC;;;AC)(A;CIIO;GX;;;AC)(A;;LCSWDTSDRCWDWO;;;BA)(A;OICIIO;GA;;;BA)"      
$scriptActionDuration = (get-date) - $scriptActionStartTime
Write-Host "STEP 6 : Set Rights on the Printers exection time: "$scriptActionDuration.Minutes "Minute(s), " $scriptActionDuration.seconds "Seconds and " $scriptActionDuration.Milliseconds "Milleseconds"

#Finish up
$scriptTotalTime = (get-date) - $scriptStartTime
Write-Host "*** Script grand total time: "$scriptTotalTime.Minutes "Minute(s), " $scriptTotalTime.seconds "Seconds and " $scriptTotalTime.Milliseconds "Milleseconds"