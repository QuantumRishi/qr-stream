# QR-Stream Windows Start Script
# Native Node.js streaming service

param(
    [switch]$DevMode,
    [switch]$UsePM2,
    [int]$Port = 3002
)

$ErrorActionPreference = "Continue"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Starting QR-Stream" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$rootPath = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
Set-Location $rootPath

# Check Node.js
$node = Get-Command node -ErrorAction SilentlyContinue
if (-not $node) {
    Write-Host "[ERROR] Node.js not found. Install with: winget install OpenJS.NodeJS.LTS" -ForegroundColor Red
    exit 1
}

Write-Host "[INFO] Node.js: $(node --version)" -ForegroundColor Green

# Install dependencies if needed
if (-not (Test-Path "node_modules")) {
    Write-Host "[DEPS] Installing dependencies..." -ForegroundColor Yellow
    npm install
}

# Set environment
$env:PORT = $Port
$env:NODE_ENV = if ($DevMode) { "development" } else { "production" }

if ($UsePM2) {
    # Check PM2
    $pm2 = Get-Command pm2 -ErrorAction SilentlyContinue
    if (-not $pm2) {
        Write-Host "[INFO] Installing PM2..." -ForegroundColor Yellow
        npm install -g pm2
    }
    
    Write-Host "[PM2] Starting with PM2..." -ForegroundColor Yellow
    pm2 start npm --name "qr-stream" -- start
    pm2 status
} else {
    Write-Host "[NODE] Starting stream server on port $Port..." -ForegroundColor Yellow
    
    if ($DevMode) {
        npm run dev
    } else {
        npm start
    }
}
