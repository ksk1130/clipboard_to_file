@ECHO OFF

SET OUTPUT_FILE_DIR=%~dp0
SET OUTPUT_FILE_NAME=clip_data.txt

REM コマンドの実行結果を変数に格納
for /f "usebackq delims=" %%a in (`powershell get-clipboard`) do set CLIP_DATA=%%a
echo %CLIP_DATA%
echo %CLIP_DATA% >> %OUTPUT_FILE_DIR%\%OUTPUT_FILE_NAME%

PAUSE
