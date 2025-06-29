cd d:\hammerdb-4.12


.\hammerdbcli auto .\mssqls_tprocc_run10.tcl > results\mssqls_tprocc_10vu.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_10vu.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_10vu-hdbxtprof.log
Write-Output "10 user run complete"
Write-Output "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
Start-Sleep 15 

.\hammerdbcli auto .\mssqls_tprocc_run20.tcl > results\mssqls_tprocc_20vu.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_20vu.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_20vu-hdbxtprof.log
Write-Output "20 user run complete"
Write-Output "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
Start-Sleep 15 

.\hammerdbcli auto .\mssqls_tprocc_run40.tcl > results\mssqls_tprocc_40vu.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_40vu.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_40vu-hdbxtprof.log
Write-Output "40 user run complete"
Write-Output "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
Start-Sleep 15 

.\hammerdbcli auto .\mssqls_tprocc_run80.tcl > results\mssqls_tprocc_80vu.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_80vu.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_80vu-hdbxtprof.log
Write-Output "80 user run complete"
Write-Output "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-"
Start-Sleep 15 

.\hammerdbcli auto .\mssqls_tprocc_run100.tcl > results\mssqls_tprocc_100vu.out
.\hammerdbcli auto .\scripts\tcl\mssqls\tprocc\mssqls_tprocc_result.tcl > results\mssqls_tprocc_100vu.json
Copy-Item -Path c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log -Destination results\mssqls_tprocc_100vu-hdbxtprof.log
Write-Output "100 user run complete"



