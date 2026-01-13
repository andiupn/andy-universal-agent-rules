#
# andy-universal-agent-rules Interactive CLI
# PowerShell interactive menu for knowledge management
#
# Usage:
#   powershell -File .agent/scripts/agent-cli.ps1
#   # Or just: .\.agent\scripts\agent-cli.ps1
#

param(
    [string]$Command = ""
)

$ErrorActionPreference = "SilentlyContinue"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$AgentRoot = Split-Path -Parent $ScriptDir

# Colors
function Write-Title { param([string]$Text) Write-Host $Text -ForegroundColor Cyan }
function Write-Success { param([string]$Text) Write-Host $Text -ForegroundColor Green }
function Write-Warn { param([string]$Text) Write-Host $Text -ForegroundColor Yellow }
function Write-Err { param([string]$Text) Write-Host $Text -ForegroundColor Red }
function Write-Menu { param([string]$Text) Write-Host $Text -ForegroundColor White }

# Check if Python is available
function Test-Python {
    try {
        $null = python --version 2>&1
        return $true
    }
    catch {
        return $false
    }
}

$HasPython = Test-Python

# Clear screen and show menu
function Show-Menu {
    Clear-Host
    Write-Host ""
    Write-Title "+====================================================+"
    Write-Title "|       andy-universal-agent-rules CLI               |"
    Write-Title "+====================================================+"
    Write-Menu  "| 1. [Search] Search Knowledge                       |"
    Write-Menu  "| 2. [Save]   Save New Knowledge                     |"
    Write-Menu  "| 3. [Maint]  Run Maintenance                        |"
    Write-Menu  "| 4. [Backup] Backup Memory                          |"
    Write-Menu  "| 5. [Stats]  Show Stats                             |"
    Write-Menu  "| 6. [Valid]  Validate Index                         |"
    Write-Title "+----------------------------------------------------+"
    Write-Menu  "| 0. [Exit]   Exit                                   |"
    Write-Title "+====================================================+"
    Write-Host ""
    
    if ($HasPython) {
        Write-Success "[OK] Python detected - Full features available"
    }
    else {
        Write-Warn "[!] Python not found - Using native scripts (limited)"
    }
    Write-Host ""
}

# Search Knowledge
function Invoke-Search {
    Write-Host ""
    $query = Read-Host "Enter search query"
    if ([string]::IsNullOrWhiteSpace($query)) {
        Write-Warn "No query provided."
        return
    }
    
    Write-Host ""
    if ($HasPython) {
        python "$AgentRoot/scripts/search-knowledge.py" $query
    }
    else {
        Invoke-NativeSearch -Query $query
    }
    Write-Host ""
    Read-Host "Press Enter to continue..."
}

# Native PowerShell search (fallback)
function Invoke-NativeSearch {
    param([string]$Query)
    
    $indexPath = "$AgentRoot/memory/index.json"
    if (-not (Test-Path $indexPath)) {
        Write-Err "[X] index.json not found!"
        return
    }
    
    $index = Get-Content $indexPath -Raw | ConvertFrom-Json
    $found = 0
    
    Write-Title "Searching for: $Query"
    Write-Host ""
    
    foreach ($category in @("gotchas", "patterns", "decisions", "context")) {
        $entries = $index.categories.$category.entries
        foreach ($entry in $entries) {
            if ($entry.title -match $Query -or $entry.tags -match $Query) {
                Write-Success "[$category] $($entry.title)"
                Write-Host "   File: $($entry.file)"
                Write-Host "   Tags: $($entry.tags -join ', ')"
                Write-Host ""
                $found++
            }
        }
    }
    
    if ($found -eq 0) {
        Write-Warn "No entries found matching '$Query'"
    }
    else {
        Write-Success "Found $found entries"
    }
}

# Save Knowledge
function Invoke-Save {
    Write-Host ""
    Write-Title "Save New Knowledge"
    Write-Host ""
    Write-Host "Categories: gotchas, patterns, decisions, context"
    $category = Read-Host "Category"
    
    if ($category -notin @("gotchas", "patterns", "decisions", "context")) {
        Write-Err "Invalid category!"
        return
    }
    
    $title = Read-Host "Title"
    if ([string]::IsNullOrWhiteSpace($title)) {
        Write-Err "Title cannot be empty!"
        return
    }
    
    Write-Host "Content (press Enter twice to finish):"
    $content = @()
    while ($true) {
        $line = Read-Host
        if ([string]::IsNullOrWhiteSpace($line)) { break }
        $content += $line
    }
    
    if ($content.Count -eq 0) {
        Write-Err "Content cannot be empty!"
        return
    }
    
    Write-Host ""
    if ($HasPython) {
        $contentStr = $content -join "`n"
        python "$AgentRoot/scripts/save-knowledge.py" --category $category --title $title $contentStr
    }
    else {
        Invoke-NativeSave -Category $category -Title $title -Content ($content -join "`n")
    }
    Write-Host ""
    Read-Host "Press Enter to continue..."
}

# Native PowerShell save (fallback)
function Invoke-NativeSave {
    param(
        [string]$Category,
        [string]$Title,
        [string]$Content
    )
    
    # Generate filename
    $slug = $Title.ToLower() -replace '[^a-z0-9]+', '-' -replace '^-|-$', ''
    $filename = "$slug.md"
    $filepath = "$AgentRoot/memory/entries/$Category/$filename"
    
    # Create markdown content
    $nl = [Environment]::NewLine
    $dateStr = Get-Date -Format 'yyyy-MM-dd HH:mm'
    $md = "# $Title" + $nl + $nl + $Content + $nl + $nl + "---" + $nl + "*Created: $dateStr*"
    
    $md | Out-File -FilePath $filepath -Encoding utf8
    Write-Success "[OK] Saved to: $filepath"
    
    # Update index (simplified - just add entry)
    $indexPath = "$AgentRoot/memory/index.json"
    $index = Get-Content $indexPath -Raw | ConvertFrom-Json
    
    $newEntry = @{
        title   = $Title
        file    = $filename
        tags    = @()
        created = (Get-Date -Format 'yyyy-MM-dd')
    }
    
    # Add to category (create array if null)
    if ($null -eq $index.categories.$Category.entries) {
        $index.categories.$Category.entries = @()
    }
    $index.categories.$Category.entries += $newEntry
    $index.categories.$Category.count = $index.categories.$Category.entries.Count
    $index.totalEntries = 0
    foreach ($cat in @("gotchas", "patterns", "decisions", "context")) {
        $index.totalEntries += $index.categories.$cat.count
    }
    $index.lastUpdated = (Get-Date -Format 'yyyy-MM-ddTHH:mm:ss')
    
    $index | ConvertTo-Json -Depth 10 | Out-File -FilePath $indexPath -Encoding utf8
    Write-Success "[OK] Index updated"
}

# Run Maintenance
function Invoke-Maintenance {
    Write-Host ""
    Write-Title "Running Maintenance..."
    Write-Host ""
    
    if ($HasPython) {
        Write-Host "1. Validating index..." -NoNewline
        python "$AgentRoot/scripts/validate-index.py" --fix 2>&1 | Out-Null
        Write-Success " Done"
        
        Write-Host "2. Creating backup..." -NoNewline
        python "$AgentRoot/scripts/backup-memory.py" 2>&1 | Out-Null
        Write-Success " Done"
        
        Write-Host "3. Detecting environment..." -NoNewline
        python "$AgentRoot/scripts/detect-environment.py" 2>&1 | Out-Null
        Write-Success " Done"
        
        Write-Host ""
        Write-Success "[OK] Maintenance complete!"
    }
    else {
        Write-Warn "[!] Python required for full maintenance."
        Write-Host "Running native validation only..."
        Invoke-NativeValidate
    }
    Write-Host ""
    Read-Host "Press Enter to continue..."
}

# Native Validate (fallback)
function Invoke-NativeValidate {
    $indexPath = "$AgentRoot/memory/index.json"
    if (-not (Test-Path $indexPath)) {
        Write-Err "[X] index.json not found!"
        return
    }
    
    try {
        $index = Get-Content $indexPath -Raw | ConvertFrom-Json
        Write-Success "[OK] index.json is valid JSON"
        Write-Host "   Total entries: $($index.totalEntries)"
    }
    catch {
        Write-Err "[X] index.json is invalid!"
    }
}

# Backup Memory
function Invoke-Backup {
    Write-Host ""
    if ($HasPython) {
        python "$AgentRoot/scripts/backup-memory.py"
    }
    else {
        Write-Title "Creating backup..."
        $timestamp = Get-Date -Format 'yyyyMMdd-HHmmss'
        $backupDir = "$AgentRoot/backups"
        $backupFile = "$backupDir/memory-$timestamp.zip"
        
        if (-not (Test-Path $backupDir)) {
            New-Item -ItemType Directory -Path $backupDir | Out-Null
        }
        
        Compress-Archive -Path "$AgentRoot/memory" -DestinationPath $backupFile -Force
        Write-Success "[OK] Backup created: $backupFile"
    }
    Write-Host ""
    Read-Host "Press Enter to continue..."
}

# Show Stats
function Show-Stats {
    Write-Host ""
    Write-Title "Knowledge Base Stats"
    Write-Host ""
    
    $indexPath = "$AgentRoot/memory/index.json"
    if (-not (Test-Path $indexPath)) {
        Write-Err "[X] index.json not found!"
        return
    }
    
    $index = Get-Content $indexPath -Raw | ConvertFrom-Json
    
    Write-Host "Total Entries: $($index.totalEntries)"
    Write-Host ""
    Write-Host "By Category:"
    foreach ($category in @("gotchas", "patterns", "decisions", "context")) {
        $count = $index.categories.$category.count
        $desc = $index.categories.$category.description
        Write-Host "  - ${category}: $count ($desc)"
    }
    Write-Host ""
    Write-Host "Last Updated: $($index.lastUpdated)"
    Write-Host ""
    Read-Host "Press Enter to continue..."
}

# Validate Index
function Invoke-Validate {
    Write-Host ""
    if ($HasPython) {
        python "$AgentRoot/scripts/validate-index.py" --report
    }
    else {
        Invoke-NativeValidate
    }
    Write-Host ""
    Read-Host "Press Enter to continue..."
}

# Handle direct command
if ($Command -eq "exit") {
    exit 0
}

# Main loop
while ($true) {
    Show-Menu
    $choice = Read-Host "Select option"
    
    switch ($choice) {
        "1" { Invoke-Search }
        "2" { Invoke-Save }
        "3" { Invoke-Maintenance }
        "4" { Invoke-Backup }
        "5" { Show-Stats }
        "6" { Invoke-Validate }
        "0" { 
            Write-Host ""
            Write-Success "Goodbye!"
            exit 0
        }
        default {
            Write-Warn "Invalid option. Please try again."
            Start-Sleep -Seconds 1
        }
    }
}
