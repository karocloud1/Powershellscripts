$files = Get-ChildItem -Path  'C:\Users\username\Desktop\files\DIS\Invalid'
$result = foreach ($file in $files) {
	$reqnr = ($file.Basename).split('-')[1]
	$date = $file.CreationTime.ToString('yyyy-MM-dd')
	$reqnr
	$date
	Select-String -Path "C:\Users\username\Desktop\files\logs\server.log.$($date)" -Pattern "$reqnr" -Context 750, 100 
}

$result | Out-File "C:\Users\username\Desktop\files\script test\Result.txt"


