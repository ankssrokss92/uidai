@setlocal
@echo off
set PATH=.\qssitv\l1\bin
set L1_HOME=.\qssitv\l1

set CLASSPATH=.\lib\*;
set JVM_ARGS=-Xverify:none -Xshare:auto -Xms32m -Xmx512m -XX:MaxHeapFreeRatio=5 -XX:MinHeapFreeRatio=5
set JVM_ARGS=%JVM_ARGS% -Djavax.net.ssl.trustStoreType=WINDOWS-ROOT
title Aadhaar QSSITV Service (console mode)

.\jre\bin\java %JVM_ARGS% -classpath %CLASSPATH% in.gov.uidai.qssitv.server.ServiceMain

@endlocal
