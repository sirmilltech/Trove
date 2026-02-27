$gitignoreContent = @"
node_modules/
/dist
/www
/android/app/build
/ios/App/build
capacitor.plugins.json
*.log
.DS_Store
"@

Create the file

Set-Content -Path ".gitignore" -Value $gitignoreContent

Clean up the git tracking

git rm -r --cached .
git add .

Write-Host "Success! .gitignore created and git cache cleared." -ForegroundColor Green
Write-Host "Now run: git commit -m 'Fixed gitignore'" -ForegroundColor White