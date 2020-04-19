@ECHO OFF

SET OUTPUT_FILE_DIR=%~dp0
SET OUTPUT_FILE_NAME=clip_data.txt

REM �R�}���h�̎��s���ʂ�ϐ��Ɋi�[
for /f "usebackq delims=" %%a in (`powershell get-clipboard`) do set CLIP_DATA=%%a
echo %CLIP_DATA%

REM �����̃t�@�C�����e���N���b�v�{�[�h�ɏ㏑��(�ޔ�)
type %OUTPUT_FILE_DIR%\%OUTPUT_FILE_NAME% | clip

REM �V�����ˌÂ��̏��ԂŃt�@�C���ɏ�������
echo %CLIP_DATA% >          %OUTPUT_FILE_DIR%\%OUTPUT_FILE_NAME%
powershell get-clipboard >> %OUTPUT_FILE_DIR%\%OUTPUT_FILE_NAME%

PAUSE
