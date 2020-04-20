param(
[string]$OUTPUT_FILE_DIR
)

$OUTPUT_FILE_NAME="clip_data.txt"

# ���݂̃N���b�v�{�[�h�̓��e��ϐ��Ɋi�[
$current_clip_data = Get-Clipboard
Write-Host $current_clip_data

# �����̃t�@�C�����e���N���b�v�{�[�h�Ɋi�[
findstr "." (Join-Path $OUTPUT_FILE_DIR $OUTPUT_FILE_NAME) | clip

# �V�����ˌÂ��̏��ԂŃt�@�C���ɏ�������
echo $current_clip_data | Out-File (Join-Path $OUTPUT_FILE_DIR $OUTPUT_FILE_NAME) -Encoding Default
get-clipboard | Out-File -Append (Join-Path $OUTPUT_FILE_DIR $OUTPUT_FILE_NAME) -Encoding Default
