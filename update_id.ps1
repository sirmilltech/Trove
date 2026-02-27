# 1. Create the 'www' folder if it doesn't exist
if (!(Test-Path "www")) {
    New-Item -ItemType Directory -Path "www"
    Write-Host "Created www directory." -ForegroundColor Green
}

# 2. Move web assets into 'www'
# Based on your screenshots, we need index.html, assets, static, and manifest.json inside www
$targets = @("index.html", "assets", "static", "manifest.json", "images.unsplash.com", "qtrypzzcjebvfcihiynt.supabase.co")
foreach ($item in $targets) {
    if (Test-Path $item) {
        Move-Item -Path $item -Destination "www" -Force
        Write-Host "Moved $item to www." -ForegroundColor Cyan
    }
}

# 3. Update the Capacitor Configuration File
$configPath = "capacitor.config.ts"
$newConfig = @"
import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.milltech.trove.app',
  appName: 'TROVE',
  webDir: 'www',
  server: {
    androidScheme: 'https'
  }
};

export default config;
"@

Set-Content -Path $configPath -Value $newConfig
Write-Host "Updated capacitor.config.ts with appId: com.milltech.trove.app" -ForegroundColor Yellow

# 4. Final Sync to iOS/Android
Write-Host "Syncing with mobile platforms..." -ForegroundColor Cyan
npx cap sync
