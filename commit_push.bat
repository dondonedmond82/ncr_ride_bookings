@echo off
REM ============================================================
REM  Push local project to GitHub repo:
REM  https://github.com/dondonedmond82/ncr_ride_bookings
REM
REM  HOW TO USE:
REM  1. Copy this .bat file into your local project folder
REM     (the folder containing your notebook, README.md, and
REM     ncr_ride_bookings.csv).
REM  2. Double-click it, or run it from a command prompt in
REM     that folder.
REM  3. Make sure Git is installed (https://git-scm.com/downloads)
REM     and that you are logged in / authenticated with GitHub
REM     (e.g. via Git Credential Manager, which comes with the
REM     Git for Windows installer).
REM ============================================================

echo.
echo === Pushing project to GitHub ===
echo.

REM Make sure we are running from the folder this script lives in
cd /d "%~dp0"

REM Check that git is installed
where git >nul 2>nul
if errorlevel 1 (
    echo ERROR: Git is not installed or not on PATH.
    echo Download it from https://git-scm.com/downloads and try again.
    pause
    exit /b 1
)

REM Initialize a git repo here if one doesn't already exist
if not exist ".git" (
    echo Initializing new git repository...
    git init
) else (
    echo Git repository already initialized, skipping init.
)

REM Rename current branch to main
git branch -M main

REM Add the GitHub remote if it isn't already set
git remote get-url origin >nul 2>nul
if errorlevel 1 (
    echo Adding remote origin...
    git remote add origin https://github.com/dondonedmond82/ncr_ride_bookings.git
) else (
    echo Remote origin already set, skipping.
)

REM Stage all files
echo Staging files...
git add .

REM Commit (skip if nothing to commit)
git commit -m "Initial commit: NCR ride booking analysis" 2>nul
if errorlevel 1 (
    echo Nothing new to commit, continuing...
)

REM Push to GitHub
echo Pushing to GitHub...
git push -u origin main

if errorlevel 1 (
    echo.
    echo ERROR: Push failed. Common causes:
    echo  - You are not authenticated with GitHub yet ^(a login
    echo    window should pop up the first time you push^).
    echo  - The remote already has commits that conflict.
    echo    Try: git pull origin main --allow-unrelated-histories
    echo.
) else (
    echo.
    echo === Done! Your code has been pushed to: ===
    echo https://github.com/dondonedmond82/ncr_ride_bookings
    echo.
)

pause