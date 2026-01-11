#!/usr/bin/env python3
"""
sync-agents-stats.py - Auto-sync AGENTS.md statistics with actual memory entries

Usage:
    python scripts/sync-agents-stats.py           # Sync statistics
    python scripts/sync-agents-stats.py --dry-run # Preview changes without writing
    python scripts/sync-agents-stats.py --help    # Show help

Features:
- Reads index.json to get actual counts
- Updates AGENTS.md with correct statistics
- Preserves all other content
- Shows diff of changes
"""

import json
import os
import sys
import re
from datetime import datetime

# Configuration
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.dirname(SCRIPT_DIR)
INDEX_PATH = os.path.join(PROJECT_ROOT, ".agent", "memory", "index.json")
AGENTS_PATH = os.path.join(PROJECT_ROOT, "AGENTS.md")


def load_index():
    """Load index.json and return statistics"""
    if not os.path.exists(INDEX_PATH):
        print(f"❌ Error: {INDEX_PATH} not found")
        sys.exit(1)
    
    with open(INDEX_PATH, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    stats = {
        'total': data.get('totalEntries', 0),
        'gotchas': data.get('categories', {}).get('gotchas', {}).get('count', 0),
        'patterns': data.get('categories', {}).get('patterns', {}).get('count', 0),
        'decisions': data.get('categories', {}).get('decisions', {}).get('count', 0),
        'context': data.get('categories', {}).get('context', {}).get('count', 0),
        'learnings': data.get('categories', {}).get('learnings', {}).get('count', 0),
    }
    
    return stats


def update_agents_md(stats, dry_run=False):
    """Update AGENTS.md with actual statistics"""
    if not os.path.exists(AGENTS_PATH):
        print(f"❌ Error: {AGENTS_PATH} not found")
        sys.exit(1)
    
    with open(AGENTS_PATH, 'r', encoding='utf-8') as f:
        content = f.read()
    
    original_content = content
    changes_made = []
    
    # Pattern 0: Update header stats line (Line 4)
    # "*Stats: X entries (Y gotchas, Z patterns, W decisions, V context)*"
    pattern0 = r'(\*Stats:\s+)(\d+)(\s+entries\s+\()(\d+)(\s+gotchas,\s+)(\d+)(\s+patterns,\s+)(\d+)(\s+decisions,\s+)(\d+)(\s+context\)\*)'
    match0 = re.search(pattern0, content)
    if match0:
        old_total = match0.group(2)
        old_gotchas = match0.group(4)
        old_patterns = match0.group(6)
        old_decisions = match0.group(8)
        old_context = match0.group(10)
        
        new_total = str(stats['total'])
        new_gotchas = str(stats['gotchas'])
        new_patterns = str(stats['patterns'])
        new_decisions = str(stats['decisions'])
        new_context = str(stats['context'])
        
        if (old_total != new_total or old_gotchas != new_gotchas or 
            old_patterns != new_patterns or old_decisions != new_decisions or 
            old_context != new_context):
            replacement = rf'\g<1>{new_total}\g<3>{new_gotchas}\g<5>{new_patterns}\g<7>{new_decisions}\g<9>{new_context}\g<11>'
            content = re.sub(pattern0, replacement, content)
            changes_made.append(f"Header stats: {old_total} → {new_total} entries")
    
    # Pattern 1: Update total entries count
    # "← Knowledge persistence (XX entries)"
    pattern1 = r'(memory/\s+←\s+Knowledge persistence\s+\()(\d+)(\s+entries\))'
    match1 = re.search(pattern1, content)
    if match1:
        old_val = match1.group(2)
        new_val = str(stats['total'])
        if old_val != new_val:
            content = re.sub(pattern1, rf'\g<1>{new_val}\g<3>', content)
            changes_made.append(f"Total entries: {old_val} → {new_val}")
    
    # Pattern 2: Update gotchas count
    # "← X critical bugs"
    pattern2 = r'(gotchas/\s+←\s+)(\d+)(\s+critical bugs)'
    match2 = re.search(pattern2, content)
    if match2:
        old_val = match2.group(2)
        new_val = str(stats['gotchas'])
        if old_val != new_val:
            content = re.sub(pattern2, rf'\g<1>{new_val}\g<3>', content)
            changes_made.append(f"Gotchas count: {old_val} → {new_val}")
    
    # Pattern 3: Update patterns count
    # "← X code patterns"
    pattern3 = r'(patterns/\s+←\s+)(\d+)(\s+code patterns)'
    match3 = re.search(pattern3, content)
    if match3:
        old_val = match3.group(2)
        new_val = str(stats['patterns'])
        if old_val != new_val:
            content = re.sub(pattern3, rf'\g<1>{new_val}\g<3>', content)
            changes_made.append(f"Patterns count: {old_val} → {new_val}")
    
    # Pattern 4: Update decisions count
    # "← X arch decision"
    pattern4 = r'(decisions/\s+←\s+)(\d+)(\s+arch decision)'
    match4 = re.search(pattern4, content)
    if match4:
        old_val = match4.group(2)
        new_val = str(stats['decisions'])
        if old_val != new_val:
            content = re.sub(pattern4, rf'\g<1>{new_val}\g<3>', content)
            changes_made.append(f"Decisions count: {old_val} → {new_val}")
    
    # Pattern 5: Update context count
    # "← X project guides"
    pattern5 = r'(context/\s+←\s+)(\d+)(\s+project guides)'
    match5 = re.search(pattern5, content)
    if match5:
        old_val = match5.group(2)
        new_val = str(stats['context'])
        if old_val != new_val:
            content = re.sub(pattern5, rf'\g<1>{new_val}\g<3>', content)
            changes_made.append(f"Context count: {old_val} → {new_val}")
    
    # Pattern 6: Update "Last Updated" date
    pattern6 = r'(\*Last Updated:\s+)(\d{4}-\d{2}-\d{2})(\*)'
    match6 = re.search(pattern6, content)
    if match6:
        old_date = match6.group(2)
        new_date = datetime.now().strftime('%Y-%m-%d')
        if old_date != new_date and changes_made:
            content = re.sub(pattern6, rf'\g<1>{new_date}\g<3>', content)
            changes_made.append(f"Last Updated: {old_date} → {new_date}")
    
    # Check if any changes were made
    if not changes_made:
        print("✅ AGENTS.md is already up-to-date!")
        return False
    
    # Show changes
    print("📊 Changes to be made:")
    for change in changes_made:
        print(f"   • {change}")
    print()
    
    # Write changes
    if dry_run:
        print("🔍 DRY RUN - No changes written to file")
        return True
    
    with open(AGENTS_PATH, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"✅ AGENTS.md updated successfully!")
    return True


def show_current_stats(stats):
    """Display current statistics"""
    print("📊 Current Memory Statistics:")
    print(f"   • Total entries: {stats['total']}")
    print(f"   • Gotchas: {stats['gotchas']}")
    print(f"   • Patterns: {stats['patterns']}")
    print(f"   • Decisions: {stats['decisions']}")
    print(f"   • Context: {stats['context']}")
    print(f"   • Learnings: {stats['learnings']}")
    print()


def main():
    # Parse arguments
    dry_run = '--dry-run' in sys.argv
    show_help = '--help' in sys.argv or '-h' in sys.argv
    
    if show_help:
        print(__doc__)
        sys.exit(0)
    
    print("🔄 Syncing AGENTS.md statistics...")
    print()
    
    # Load statistics
    stats = load_index()
    show_current_stats(stats)
    
    # Update AGENTS.md
    update_agents_md(stats, dry_run)


if __name__ == "__main__":
    main()
