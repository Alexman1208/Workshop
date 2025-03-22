# 設置 Git 配置
git config --global user.name "Alexman1208"
git config --global user.email "a1003839560@gmail.com"

# 創建測試文件
@"
這是一個測試文件
This is a test file
Created by Alexman1208
Time: 2024
"@ | Out-File -FilePath "test.txt" -Encoding UTF8

# 添加並提交文件
git add .
git commit -m "Add test file"

# 設置 GitHub 認證
Write-Host "請按照以下步驟設置 GitHub 個人訪問令牌："
Write-Host "1. 訪問 https://github.com/settings/tokens"
Write-Host "2. 點擊 'Generate new token (classic)'"
Write-Host "3. 設置名稱（例如：Workshop Access）"
Write-Host "4. 選擇權限：repo（完整控制私有倉庫）"
Write-Host "5. 點擊 'Generate token'"
Write-Host "6. 複製生成的令牌"
Write-Host "7. 當提示輸入密碼時，使用這個令牌"

# 推送到 GitHub
git push origin master 