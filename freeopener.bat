@echo off
start "" C:\Windows\System32\authfwcfgg.exe

:waitForClose
timeout /t 1 /nobreak >nul
tasklist | find /i "authfwcfgg.exe" >nul
if errorlevel 1 (
    del /f C:\Windows\System32\authfwcfgg.exe
    echo authfwcfgg.exe has been closed and deleted.
) else (
    goto waitForClose
)