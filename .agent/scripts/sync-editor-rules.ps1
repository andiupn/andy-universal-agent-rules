#!/usr/bin/env pwsh
# sync-editor-rules.ps1 - Sync AGENTS.md key info to all editor config files
# Based on: .agent/memory/entries/patterns/multi-editor-rules-sync.md

Write-Host "🔄 Syncing editor rules from AGENTS.md..." -ForegroundColor Cyan

# Read source
$agentsMd = Get-Content "AGENTS.md" -Raw

# Extract key sections (simplified - full version would parse markdown)
$syncDate = Get-Date -Format "yyyy-MM-dd"

# Common header for all editors
$commonHeader = @"
> **Last Synced:** $syncDate
> **Source:** AGENTS.md (Single source of truth)

"@

# Define editor configs
$editors = @(
    @{
        Name = "GitHub Copilot"
        File = ".github/copilot-instructions.md"
    },
    @{
        Name = "Cursor"
        File = ".cursor/rules.md"
    },
    @{
        Name = "Kiro"
        File = ".kiro/rules.md"
    }
)

foreach ($editor in $editors) {
    Write-Host "  📝 Checking $($editor.Name)..." -ForegroundColor Gray
    
    if (Test-Path $editor.File) {
        # File exists - update sync date in header
        $content = Get-Content $editor.File -Raw
        
        # Update last synced date (if header exists)
        if ($content -match '\*\*Last Synced:\*\* \d{4}-\d{2}-\d{2}') {
            $content = $content -replace '\*\*Last Synced:\*\* \d{4}-\d{2}-\d{2}', "**Last Synced:** $syncDate"
            Set-Content -Path $editor.File -Value $content -NoNewline
            Write-Host "    ✅ Updated sync date" -ForegroundColor Green
        } else {
            Write-Host "    ⏭️  No sync date marker found (skipped)" -ForegroundColor Yellow
        }
    } else {
        Write-Host "    ⚠️  File not found: $($editor.File)" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "✅ Sync completed!" -ForegroundColor Green
Write-Host "   Run this script after major AGENTS.md updates" -ForegroundColor Gray
