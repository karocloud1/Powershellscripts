'Type in the Certifcate holder reference value'

$CHR = Read-Host


Convert-Path 'C:\Users\username\Desktop\name\*txt' | % {
  if (Test-Path $_) {
    Rename-Item $_ "$CHR.csr"
  }
}

Move-Item -Path 'C:\Users\username\Desktop\name\*' -Destination 'C:\Users\username\Desktop'