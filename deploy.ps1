$commitMessage = "deploying " + (Get-Date -f "yyyy-MM-dd HH:mm:ss")
git add --all
Write-Host
Write-Host "Creating new commit: $commitMessage..."
git commit -m "$commitMessage"
Write-Host
Write-Host "Pushing changes to origin/master..."
git push origin master
Write-Host
Write-Host "Starting new build..."
oc start-build demo --follow
