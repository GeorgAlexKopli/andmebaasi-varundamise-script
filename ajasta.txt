$ErrorActionPreference = 'Stop'

# Kaivita sama Windowsi kasutajana, kellele salvestasid MySQL parooli.
$account = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
$credential = Get-Credential -UserName $account -Message 'Sisesta Windowsi konto parool (mitte PIN).'
if ($null -eq $credential) { throw 'Ajastamine katkestatud.' }
if ($credential.UserName -ne $account) { throw 'Kasuta praegust Windowsi kontot.' }

$script = Join-Path $PSScriptRoot 'backup.ps1'
$action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument "-NoProfile -NonInteractive -ExecutionPolicy Bypass -File `"$script`"" -WorkingDirectory $PSScriptRoot
$trigger = New-ScheduledTaskTrigger -Daily -At '04:00'
$settings = New-ScheduledTaskSettingsSet -WakeToRun -StartWhenAvailable -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -MultipleInstances IgnoreNew
Register-ScheduledTask -TaskName 'Rimi backup georgalex' -Action $action -Trigger $trigger -Settings $settings -User $account -Password $credential.GetNetworkCredential().Password | Out-Null
Write-Host 'Ajastatud iga paev kell 04:00.'