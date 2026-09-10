# MySQL varundamine

`backup.ps1` varundab kohaliku `rimi-database` andmed ja skeemi faili `rimi_georgalex.sql` ning saadab selle SFTP kaudu serverisse `172.18.24.8`, kausta `C:/Users/backups/databases`. Sama nimega eelmine varukoopia asendatakse.

## Seadistamine

1. Vajalikud on MySQL Server 8.0 ja [WinSCP](https://winscp.net/eng/download.php).
2. Ava PowerShell skriptide kaustas oma tavalise Windowsi kasutajana.
3. Salvesta MySQL root-parool ühe korra (käsk küsib parooli):

```powershell
& 'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql_config_editor.exe' set --login-path=rimi-backup --host=localhost --port=3306 --user=root --password
```

4. Käivita varundus:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\backup.ps1
```

## Iga öö kell 04:00

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\ajasta.ps1
```
