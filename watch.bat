@echo off
chcp 65001 >nul
title FlowGuard Auto-Sync

echo.
echo  ╔════════════════════════════════════════╗
echo  ║   🛡  FlowGuard Auto-Sync             ║
echo  ║   Watching for updates every 5s...    ║
echo  ╚════════════════════════════════════════╝
echo.

cd /d C:\Projects\FlowGuard

:: Make sure we're on main branch
git checkout main 2>nul
git branch --set-upstream-to=origin/main main 2>nul

:loop
git pull --quiet origin main 2>nul
if %errorlevel% == 0 (
    for /f %%i in ('git log -1 --format^=%%s') do set MSG=%%i
    echo [%time%] Synced — %MSG%
) else (
    echo [%time%] — No changes
)
timeout /t 5 /nobreak >nul
goto loop
