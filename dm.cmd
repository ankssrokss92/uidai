@setlocal
@echo off

set CLASSPATH=.\dmlib\*;

set JVM_ARGS=-Xshare:auto -Xverify:none -Xms16m -Xmx64m -XX:MaxHeapFreeRatio=5 -XX:MinHeapFreeRatio=5

title Aadhaar Device Manager (console mode)

.\jre\bin\java %JVM_ARGS% -classpath %CLASSPATH% in.gov.uidai.dm.Main

@endlocal
