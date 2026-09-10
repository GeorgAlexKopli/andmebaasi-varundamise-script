$ErrorActionPreference = 'Stop'

$mysqldump = 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe'
$winscp = 'C:\Program Files (x86)\WinSCP\WinSCP.com'
if (-not (Test-Path -LiteralPath $winscp)) {
    $winscp = 'C:\Program Files\WinSCP\WinSCP.com'
}
$backupFile = Join-Path $PSScriptRoot 'rimi_georgalex.sql'
$temporaryFile = "$backupFile.tmp"

try {
    if (-not (Test-Path -LiteralPath $mysqldump)) { throw 'mysqldump.exe puudub. Kontrolli MySQL paigaldusteed.' }
    if (-not (Test-Path -LiteralPath $winscp)) { throw 'Paigalda WinSCP.' }

    # Andmed ja skeem, sealhulgas protseduurid, sundmused ja triggerid.
    & $mysqldump --login-path=rimi-backup --single-transaction --routines --events --triggers --no-tablespaces --set-gtid-purged=OFF --databases rimi-database "--result-file=$temporaryFile"
    if ($LASTEXITCODE -ne 0) { throw 'Andmebaasi varundamine ebaonnestus.' }
    if ((Get-Item -LiteralPath $temporaryFile).Length -eq 0) { throw 'Varukoopia on tuhi.' }
    Move-Item -LiteralPath $temporaryFile -Destination $backupFile -Force

    # Esimene SSH voti salvestatakse; muutunud votmega uhendus katkestatakse.
    $commands = @(
        'option batch abort'
        'option confirm off'
        'open sftp://backups:Passw0rd@172.18.24.8/ -hostkey=acceptnew'
        "put -transfer=binary `"$backupFile`" `"/C:/Users/backups/databases/rimi_georgalex.sql`""
        'exit'
    )
    $commands | & $winscp "/ini=$PSScriptRoot\winscp.ini" /nointeractiveinput
    if ($LASTEXITCODE -ne 0) { throw 'SFTP saatmine ebaonnestus. Kohalik varukoopia on alles.' }
    Write-Host 'Varukoopia rimi_georgalex.sql loodud ja serverisse saadetud.'
    exit 0
}
catch {
    if (Test-Path -LiteralPath $temporaryFile) { Remove-Item -LiteralPath $temporaryFile -Force }
    Write-Error $_ -ErrorAction Continue
    exit 1
}
