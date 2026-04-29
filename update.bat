@echo off
chcp 65001 >nul
title FlowGuard Update
cd /d C:\Projects\FlowGuard

echo.
echo  [FlowGuard] Committing and pushing changes...
echo.

git add .

for /f "tokens=1-3 delims=/ " %%a in ("date /t") do set DATE=%%a/%%b/%%c
for /f "tokens=1-2 delims=: " %%a in ("time /t") do set TIME=%%a:%%b

git commit -m "update: %DATE% %TIME%"
git push origin master

echo.
echo  [FlowGuard] Done! Changes pushed to GitHub.
echo.
pause