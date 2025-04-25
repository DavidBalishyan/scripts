@echo off
:: Emulate the touch command to create or update a file
if "%~1"=="help.touch" (
    echo Usage: touch filename.EXT
    exit /b
)

if exist "%~1" (
    echo Updating timestamp for "%~1"
    copy /b "%~1" +,, >nul
) else (
    echo "%~1"
    type nul > "%~1"
)
