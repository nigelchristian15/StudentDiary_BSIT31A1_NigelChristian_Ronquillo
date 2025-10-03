@echo off
REM === Git Commit & Push Script ===
REM Configure Git identity (only first time; safe to keep here for automation)
git config --global user.name "nigelchristian15"
git config --global user.email "nigelchristian76@gmail.com"

REM Initialize git if not already done
if not exist ".git" (
    git init
)

REM Set the main branch
git branch -M main

REM Reset origin (in case it's already set incorrectly)
git remote remove origin 2>nul
git remote add origin https://github.com/nigelchristian15/StudentDiary_BSIT31A1_NigelChristian_Ronquillo.git

REM Stage all changes
git add .

REM Commit with message including date/time
set DATETIME=%date% %time%
git commit -m "Auto commit on %DATETIME%"

REM Push to GitHub
git push -u origin main

pause
