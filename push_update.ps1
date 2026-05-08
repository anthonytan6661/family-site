# push_update.ps1
# This script automates pushing updates to the GitHub repository.

$commitMessage = "Update itinerary - " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss")

Write-Host "Staging index.html..." -ForegroundColor Cyan
git add index.html

Write-Host "Committing changes..." -ForegroundColor Cyan
git commit -m $commitMessage

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully pushed updates to GitHub!" -ForegroundColor Green
} else {
    Write-Host "Failed to push updates. Please check your internet connection or git configuration." -ForegroundColor Red
}
