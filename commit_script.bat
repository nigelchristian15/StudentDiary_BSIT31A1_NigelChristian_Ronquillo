@echo off
REM === Git Commit & Push Script ===
REM Configure Git identity (only first time; safe to keep here for automation)
git config --global user.name "Nigel Christian Ronquillo"
git config --global user.email "your_github_email@example.com"

REM Initialize git if not already done
if not exist ".git" (
    git init
)

REM Set the main branch
git branch -M main

REM Reset origin (in case it's already set incorrectly)
git remote remove origin 2>nul
git remote add origin https://github.com/nigelronquillo/StudentDiary.git

REM Stage all changes
git add .

REM Commit with message including date/time
set DATETIME=%date% %time%
git commit -m "Auto commit on %DATETIME%"

REM Push to GitHub
git push -u origin main

pause
