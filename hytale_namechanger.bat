@echo off
setlocal enabledelayedexpansion

:: Configuration
set "file_path=C:\Users\Public\Documents\OnlineFix\Hytale\OnlineFix.ini"
set "temp_file=%temp%\OnlineFix_temp.ini"

echo ------------------------------------------
echo    --- Hytale Name Changer ---
echo      Created by GamerMD - v1
echo ------------------------------------------
echo.

:: 1. Path Verification (Done first)
if not exist "%file_path%" (
    echo [ERROR] The file was not found at:
    echo "%file_path%"
    echo.
    echo Please make sure Hytale and the OnlineFix are installed correctly.
    pause
    exit /b
)

:: 2. Parameter Verification (Check if "Name =" exists)
findstr /C:"Name =" "%file_path%" >nul
if %errorlevel% neq 0 (
    echo [ERROR] The parameter "Name =" was not found inside the .ini file.
    echo The file might be corrupted or in the wrong format.
    pause
    exit /b
)

:: 3. Input Requirement
set /p "new_name=Enter the new name: "

:: If user enters nothing, exit to prevent empty names
if "%new_name%"=="" (
    echo [ERROR] No name entered. Operation cancelled.
    pause
    exit /b
)

:: 4. Process the file
(for /f "delims=" %%a in ('type "%file_path%"') do (
    set "line=%%a"
    if "!line:~0,7!"=="Name = " (
        echo Name = %new_name%
    ) else (
        echo !line!
    )
)) > "%temp_file%"

:: 5. Finalize
move /y "%temp_file%" "%file_path%" >nul

echo.
echo Success! Your name has been updated to: %new_name%
echo.
pause