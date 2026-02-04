@echo off
setlocal enabledelayedexpansion

rem Define usernames to exclude
set "excludedUsers=Administrator Guest DefaultAccount WDAGUtilityAccount"



for /F "tokens=*" %%A in ('net localgroup Administrators ^| findstr /v /i "%excludedUsers%"') do (
    set "admin=%%A"
    echo !admin!
)

endlocal