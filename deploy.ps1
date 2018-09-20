$commitMessage = "deploying " + (Get-Date -f "yyyy-MM-dd HH:mm:ss")
git add --all
git commit -m "$commitMessage"
Write-Host "Commit Message: $commitMessage"
git push origin master