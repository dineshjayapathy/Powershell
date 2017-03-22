Invoke-Sqlcmd -InputFile "C:\DJ\SQL\RunMe.sql" -ServerInstance "QDWSQLOPS01" -database "InformaticaConfig_Dev" -ErrorAction 'Stop' -QueryTimeout 0  | Out-File C:\DJ\SQL\ItisFinal.txt 
(Get-Content C:\DJ\SQL\ItisFinal.txt  | Select-Object -Skip 5)| Set-Content C:\DJ\SQL\ItisFinal.sql
