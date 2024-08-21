@echo off

if NOT EXIST "bin\ouc.exe" (
    if EXIST "bin\ouc-updated.exe" (
        COPY "bin\ouc-updated.exe" "bin\ouc.exe"
        net start aouc
    )
)

:: Check if ota.ready is present
set /a tryCount=0
:DoRetry
if EXIST "ota.ready" (
    ::REM Wait 1 seconds and then recheck.
    TIMEOUT /T 1 >NUL
    set /a tryCount += 1
    if %tryCount% == 10 (
        echo Could not start application, Please retry
        pause
        exit
    ) else GOTO DoRetry
)
echo ota verification successful
exit /b