@ECHO OFF

SET OUTPUT_FILE_DIR=%~dp0
SET OUTPUT_FILE_NAME=clip_data.txt

REM コマンドの実行結果を変数に格納
for /f "usebackq delims=" %%a in (`powershell get-clipboard`) do set CLIP_DATA=%%a
echo %CLIP_DATA%

REM 既存のファイル内容をクリップボードに上書き(退避)
type %OUTPUT_FILE_DIR%\%OUTPUT_FILE_NAME% | clip

REM 新しい⇒古いの順番でファイルに書き込み
echo %CLIP_DATA% >          %OUTPUT_FILE_DIR%\%OUTPUT_FILE_NAME%
powershell get-clipboard >> %OUTPUT_FILE_DIR%\%OUTPUT_FILE_NAME%

PAUSE
