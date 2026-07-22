@echo off
title Commit and Push to GitHub

REM =====================================================
REM CHANGE THIS TO YOUR PROJECT FOLDER
REM =====================================================
set PROJECT_PATH=C:\Users\DONDON\OneDrive - Food and Agriculture Organization\Documents\Project\ncr_ride_bookings

cd /d "%PROJECT_PATH%"

echo ======================================
echo Git Status
echo ======================================
git status

echo.
set /p COMMIT_MSG=Enter commit message: 

if "%COMMIT_MSG%"=="" set COMMIT_MSG=Project update

echo.
echo ======================================
echo Adding files...
echo ======================================
git add .

echo.
echo ======================================
echo Committing...
echo ======================================
git commit -m "%COMMIT_MSG%"

echo.
echo ======================================
echo Pushing to GitHub...
echo ======================================
git push origin main

echo.
echo ======================================
echo Done!
echo ======================================
pause