@echo off
REM Claude History Search - Windows wrapper script
REM This script launches the compiled Rust binary

setlocal

REM Determine script location
set "SCRIPT_DIR=%~dp0"
set "BINARY_PATH=%SCRIPT_DIR%target\release\claude-history.exe"

REM Check if binary exists
if not exist "%BINARY_PATH%" (
    echo Error: Binary not found at %BINARY_PATH%
    echo Please run: cargo build --release
    exit /b 1
)

REM Run the binary with all arguments passed through
"%BINARY_PATH%" %*

endlocal
