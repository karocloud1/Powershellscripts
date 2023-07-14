[DateTime]$start_time="2023-04-12 13:10:04"
[DateTime]$end_time="2023-04-12 14:10:05"
$des_folder = "C:\Users\username\Desktop\files\DEST"

Get-ChildItem C:\Users\username\Desktop\files\COPY\*.txt -Recurse | foreach {if($_.lastwritetime -ge $start_time -and $_.lastwritetime -le $end_time) { move-item $_.fullname $des_folder }}