function Get-Speak
{
param([string]$speak)
Add-Type -AssemblyName System.Speech
$myspeakobj = New-Object System.Speech.Synthesis.speechsynthesizer

$myspeakobj.speak($speak)
}

Get-Speak -speak $speak

