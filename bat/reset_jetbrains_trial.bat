@echo off
REM Delete eval folder with licence key and options.xml which contains a reference to it
for %%I in ("phpStorm") do (
    for /d %%a in ("%USERPROFILE%\.%%I*") do (
        rd /s /q "%%a/config/eval"
        del /q "%%a\config\options\other.xml"
    )
)

@REM Delete registry key and jetbrains folder (not sure if needed but however)
@REM rmdir /s /q "%APPDATA%\JetBrains"
@REM reg delete "HKEY_CURRENT_USER\Software\JavaSoft" /f