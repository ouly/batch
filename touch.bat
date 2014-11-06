@echo off
rem Assign current time and date to a file without modifying the file.
rem
rem author:  Olivier Wenger <https://github.com/ouly>
rem version: 1.0.0, 2014-11-06
rem see:     http://technet.microsoft.com/en-us/library/bb490886.aspx

IF "%~1"=="" (
    echo Missing argument.
    goto error
)

IF "%~1"=="/?" (
    echo Assign current time and date to a file without modifying the file.
    echo.
    echo TOUCH file
    echo.
    echo   file         File to touch.
    goto end
)

copy /b /y "%~1"+,,

:end
exit /B 0
:error
exit /B 1

rem END OF FILE
