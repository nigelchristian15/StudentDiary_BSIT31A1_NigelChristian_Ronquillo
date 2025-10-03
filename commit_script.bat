@echo off
REM === StudentDiary Task-Based Commit Script ===
REM Configure Git identity (only needs to be set once on your PC)
git config --global user.name "nigelchristian15"
git config --global user.email "nigelchristian76@gmail.com"

REM Initialize Git if not already initialized
if not exist ".git" (
    git init
    git branch -M main
    git remote add origin https://github.com/nigelchristian15/StudentDiary_BSIT31A1_NigelChristian_Ronquillo.git
)

REM =====================
REM US001 – Infrastructure Layer
REM =====================
git add StudentDiary.Infrastructure/Models/User.cs
git commit -m "feat: US001 - Add User entity with auth fields"

git add StudentDiary.Infrastructure/Models/DiaryEntry.cs
git commit -m "feat: US001 - Add DiaryEntry entity with content and timestamps"

git add StudentDiary.Infrastructure/Data/StudentDiaryContext.cs
git commit -m "feat: US001 - Add DbContext with entity relationships"

git add StudentDiary.Infrastructure/StudentDiary.Infrastructure.csproj
git commit -m "chore: US001 - Configure EF Core with SQLite provider"

REM =====================
REM US002 – Services Layer
REM =====================
git add StudentDiary.Services/DTOs/UserDTOs.cs
git commit -m "feat: US002 - Add DTOs for user registration and login"

git add StudentDiary.Services/DTOs/DiaryEntryDTOs.cs
git commit -m "feat: US002 - Add DTOs for diary CRUD operations"

git add StudentDiary.Services/Interfaces/IAuthService.cs
git commit -m "feat: US002 - Define IAuthService interface"

git add StudentDiary.Services/Interfaces/IDiaryService.cs
git commit -m "feat: US002 - Define IDiaryService interface"

git add StudentDiary.Services/StudentDiary.Services.csproj
git commit -m "chore: US002 - Add Services project file"

REM =====================
REM US003 – Presentation Layer
REM =====================
git add StudentDiary.Presentation/*
git commit -m "feat: US003 - Scaffold ASP.NET Core MVC project"

git add StudentDiary.Presentation/Program.cs StudentDiary.Presentation/Startup.cs
git commit -m "chore: US003 - Configure EF Core and service injection"

git add StudentDiary.Presentation/StudentDiary.Presentation.csproj
git commit -m "chore: US003 - Add Presentation project file"

REM =====================
REM US004 – Migration Setup
REM =====================
git add StudentDiary.Infrastructure/Migrations/*InitialCreate*.cs
git commit -m "feat: US004 - Add InitialCreate migration for User and DiaryEntry"

git add StudentDiary.Infrastructure/Migrations/*Designer.cs
git commit -m "chore: US004 - Configure unique indexes and cascade deletes"

git add StudentDiary.Infrastructure/Migrations/StudentDiaryContextModelSnapshot.cs
git commit -m "chore: US004 - Add model snapshot for migration tracking"

REM =====================
REM Global Setup Files
REM =====================
git add .gitignore
git commit -m "chore: Add .gitignore to exclude build artifacts and DB files"

git add StudentDiary.sln
git commit -m "chore: Add solution file to root"

REM =====================
REM Push to GitHub
REM =====================
git push -u origin main

echo ====================================
echo All commits pushed successfully! 🚀
echo ====================================
pause
