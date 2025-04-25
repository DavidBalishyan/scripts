@echo off
:: This batch script acts like 'rm' in Linux.
:: Usage: rm <file_or_folder_name> [-r]

setlocal

:: Check for arguments
if "%~1"=="" (
    echo Usage: %~nx0 ^<file_or_folder_name^> [-r]
    echo Options:
    echo   -r  Recursively delete directories.
    exit /b 1
)

:: Recursive deletion flag
set "recursive="

:: Check for -r flag
if "%~2"=="-r" (
    set "recursive=1"
)

:: Check if it's a directory
if exist "%~1\" (
    if defined recursive (
        echo Deleting directory "%~1" and its contents...
        rmdir /s /q "%~1"
    ) else (
        echo Cannot delete directory "%~1" without -r option.
    )
    exit /b
)

:: Delete file
if exist "%~1" (
    echo Deleting file "%~1"...
    del /q "%~1"
) else (
    echo File or directory "%~1" does not exist.
)

endlocal    