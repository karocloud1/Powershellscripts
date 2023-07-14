$file = Get-Content -path 'C:\Users\username\Desktop\files\dates.txt'

foreach ($item in $file)
{
 $f= $item.Split("-")
 $newdate = $f[2]+"-"+$f[1]+"-"+$f[0]
 $newdate
 
 }
