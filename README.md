
All scripts should be copied into a HammerDB 4.12 directory. The scripts assume 
HammerDB has been installed in D:\HammerDB-4.12. The hammerdb-* scripts that 
rebuild the tpcc schema invoke the 
D:\HammerDB-4.12\scripts\tcl\mssql\tprocc\mssqls_tprocc_buildschema.tcl script. 
You should change the set vu line in this script to be "set vu 100" so that 500 
warehouses are built.

Database tuning scripts
  traceflags.sql
    Used to enable certain traceflag tuning options. For use with sqlcmd command. See: 
    https://www.sqlservercentral.com/articles/sql-server-trace-flags-complete-list-3 
    for description of many of them.
  create_db.sql
    Used to set size and expansion rules for database and log file. Invoked by 
    hammerdb-multi-user-5runs.ps1 file.                 
HammerDB run scripts
  hammerdb-multi-user.bat         
    Older version of run script using batch commands. Superceeded by hammerdb-multi-user-5runs.ps1
  hammerdb-multi-user-5runs.ps1  
    Current HammerDB powershell run script. Deletes schema, runs create_db.sql 
    script, invokes hammerdbws to enable jobs database, and then run through 5 
    iterations of 10, 20, 40, 80, and 100 user benchmarks. Individual user 
    benchmark are executed by invoking matching mssqls_tprocc_runxx.tcl script.
  hammerdb-multi-user-no-del.ps1  
    Intermediate version of powershell script. Runs single iteration of 10, 20, 
    40, 80, and 100 user configurations. Does not recreate schema, launch 
    hammerdbws, or configure the database.

TCL scripts used  to run 10, 20, 40, 80, and 100 user configurations of HammerDB.
  mssqls_tprocc_run10.tcl   
  mssqls_tprocc_run20.tcl  
  mssqls_tprocc_run80.tcl
  mssqls_tprocc_run40.tcl  
  mssqls_tprocc_run100.tcl  

Things to note:
1. Default installation dir: C:\Program files\HammerDB-4.12
2. Create "results" directory under HammerDB-4.12 dir
3. Change "mssqls_linux_odbc {ODBC Driver 18 for SQL Server}" to "mssqls_odbc_driver {ODBC Driver 17 for SQL Server}"
4. Change "sa" account password across all tcl scripts to "user set password" 
5. Change odbc driver,"sa" in mssqls_tprocc_runxx.tcl and under C:\Program files\HammerDB-4.12\scripts\tcl\mssql\tprocc\*.tcl
6. change powershell working path to "C:\Program files\HammerDB-4.12" in ps1 scripts
7. hbxtprof.log file path has to be changed from TCL files. remove "1" from the path as that causes error
