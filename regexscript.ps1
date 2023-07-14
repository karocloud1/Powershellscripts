$input_path = ‘C:\Users\username\Desktop\nortest.txt’
$output_file = ‘C:\Users\username\Desktop\result.txt’
$regex = 'NO\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
select-string -Path $input_path -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Value } > $output_file


