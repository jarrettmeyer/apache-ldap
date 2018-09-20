$commitMessage = "deploying " + (Get-Date -f "yyyy-MM-dd HH:mm:ss")
git add --all
git commit -m "$commitMessage"
Write-Host
Write-Host "Commit Message: $commitMessage"
Write-Host
git push origin master
Write-Host
oc start-build demo --follow
