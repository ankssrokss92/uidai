@setlocal
@echo off

set PATH=%PATH%;.\jre\bin;

call ota-verify.cmd

start .\bin\launcher.exe ecmp

@endlocal
