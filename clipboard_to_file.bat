@ECHO OFF

SET OUTPUT_FILE_DIR=%~dp0

powershell -NoProfile -ExecutionPolicy Unrestricted "%OUTPUT_FILE_DIR%clipboard_to_file.ps1" -OUTPUT_FILE_DIR %OUTPUT_FILE_DIR%

PAUSE
