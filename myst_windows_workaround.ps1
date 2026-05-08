$ErrorActionPreference = "Stop"
Write-Host "Running myst build to fetch template..."
npx mystmd build

$templateDir = "_build/templates/site/myst/book-theme"
$nestedDir = "$templateDir/book-theme-main"

if (Test-Path $nestedDir) {
    Write-Host "Detected nested template folder due to Windows bug. Fixing..."
    
    # Copy all items from nested directory up one level
    Copy-Item -Path "$nestedDir\*" -Destination $templateDir -Recurse -Force
    
    # Remove empty nested directory
    Remove-Item $nestedDir -Recurse -Force
    
    Write-Host "Running npm install in the fixed template directory..."
    Push-Location $templateDir
    npm install
    Pop-Location
    
    Write-Host "Fix complete! You can now run the build:"
    Write-Host "myst build --template `"$templateDir`""
} else {
    Write-Host "No nested folder detected. Bug might be fixed or you're not on a mapped drive."
}
