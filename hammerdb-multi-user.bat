cd /D d:\hammerdb

.\hammerdbcli.exe auto .\mssqls_tprocc_run10.tcl > results\mssqls_tprocc_10vu.out
cp c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log results\mssqls_tprocc_10vu-hdbxtprof.log
echo "10 user run complete"
timeout /t 15 /nobreak 1>NUL

.\hammerdbcli.exe auto .\mssqls_tprocc_run20.tcl > results\mssqls_tprocc_20vu.out
cp c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log results\mssqls_tprocc_20vu-hdbxtprof.log
echo "20 user run complete"
timeout /t 15 /nobreak 1>NUL

.\hammerdbcli.exe auto .\mssqls_tprocc_run40.tcl > results\mssqls_tprocc_40vu.out
cp c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log results\mssqls_tprocc_40vu-hdbxtprof.log
echo "40 user run complete"
timeout /t 15 /nobreak 1>NUL

.\hammerdbcli.exe auto .\mssqls_tprocc_run80.tcl > results\mssqls_tprocc_80vu.out
cp c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log results\mssqls_tprocc_80vu-hdbxtprof.log
echo "80 user run complete"
timeout /t 15 /nobreak 1>NUL

.\hammerdbcli.exe auto .\mssqls_tprocc_run100.tcl > results\mssqls_tprocc_100vu.out
cp c:\Users\Administrator\AppData\Local\temp\1\hdbxtprofile.log results\mssqls_tprocc_100vu-hdbxtprof.log
echo "100 user run complete"



