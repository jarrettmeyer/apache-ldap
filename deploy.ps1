$time = Get-Date
$commitMessage = "deploying " + $time -f "yyyy-MM-dd HH:mm:ss"
git add --all
git commit -m "$commitMessage"
git push origin master