$hta = Join-Path $PSScriptRoot 'VAICON.hta'
$ico = Join-Path $PSScriptRoot 'VAICON.ico'
$mshta = Join-Path $env:WINDIR 'System32\mshta.exe'
$ws = New-Object -ComObject WScript.Shell
foreach ($dir in @([Environment]::GetFolderPath('Desktop'), [Environment]::GetFolderPath('Startup'))) {
  $lnk = Join-Path $dir 'VAICON.lnk'
  $sc = $ws.CreateShortcut($lnk)
  $sc.TargetPath = $mshta
  $sc.Arguments = '"' + $hta + '"'
  $sc.WorkingDirectory = $PSScriptRoot
  $sc.IconLocation = $ico + ',0'
  $sc.WindowStyle = 1
  $sc.Description = 'VAICON'
  $sc.Save()
  Write-Output ('OK -> ' + $lnk)
}
