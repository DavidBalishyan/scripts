@echo off
:: Mimic the 'ls' command in Windows

REM Check for command-line arguments
if "%~1"=="" (
    REM No arguments - list current directory
    dir /b
) else (
    REM Handle command-line arguments
    if "%~1"=="-l" (
        REM Long listing format
        dir /q /s /a
    ) else if "%~1"=="-a" (
        REM Include hidden files
        dir /b /a
    ) else (
        REM Unsupported argument
        echo 'ls' does not recognize '%~1'
        echo Usage: ls [options]
        echo Options:
        echo   -l  Long listing format
        echo   -a  List all files including hidden
    )
)
