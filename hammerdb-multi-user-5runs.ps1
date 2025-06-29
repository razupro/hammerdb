cd d:\hammerdb-4.12

.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_deleteschema.tcl 
Start-Process powershell.exe -ArgumentList "-NoExit -Command & {D:\hammerdb-4.12\hammerdbws}"
sqlcmd -E -i create_db.sql

.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_buildschema.tcl 

for ($i=1;$i -le 5; $i++){

Write-Output "Iteration $i started"
.\hammerdbcli auto .\mssqls_tprocc_run10.tcl > results\mssqls_tprocc_10vu_run$i.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_10vu_run$i.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_10vu-hdbxtprof_run$i.log
Write-Output "10 user run complete"
Write-Output "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
Start-Sleep 15 

.\hammerdbcli auto .\mssqls_tprocc_run20.tcl > results\mssqls_tprocc_20vu_run$i.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_20vu_run$i.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_20vu-hdbxtprof_run$i.log
Write-Output "20 user run complete"
Write-Output "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
Start-Sleep 15 

.\hammerdbcli auto .\mssqls_tprocc_run40.tcl > results\mssqls_tprocc_40vu_run$i.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_40vu_run$i.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_40vu-hdbxtprof_run$i.log
Write-Output "40 user run complete"
Write-Output "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
Start-Sleep 15 

.\hammerdbcli auto .\mssqls_tprocc_run80.tcl > results\mssqls_tprocc_80vu_run$i.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_80vu_run$i.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_80vu-hdbxtprof_run$i.log
Write-Output "80 user run complete"
Write-Output "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
Start-Sleep 15 

.\hammerdbcli auto .\mssqls_tprocc_run100.tcl > results\mssqls_tprocc_100vu_run$i.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_100vu_run$i.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_100vu-hdbxtprof_run$i.log
Write-Output "100 user run complete"

Start-Sleep 30
}
