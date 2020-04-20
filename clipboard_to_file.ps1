param(
[string]$OUTPUT_FILE_DIR
)

$OUTPUT_FILE_NAME="clip_data.txt"

# 現在のクリップボードの内容を変数に格納
$current_clip_data = Get-Clipboard
Write-Host $current_clip_data

# 既存のファイル内容をクリップボードに格納
findstr "." (Join-Path $OUTPUT_FILE_DIR $OUTPUT_FILE_NAME) | clip

# 新しい⇒古いの順番でファイルに書き込み
echo $current_clip_data | Out-File (Join-Path $OUTPUT_FILE_DIR $OUTPUT_FILE_NAME) -Encoding Default
get-clipboard | Out-File -Append (Join-Path $OUTPUT_FILE_DIR $OUTPUT_FILE_NAME) -Encoding Default
