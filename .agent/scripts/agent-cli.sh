#!/bin/bash
#
# andy-universal-agent-rules Interactive CLI
# Bash interactive menu for knowledge management
#
# Usage:
#   bash .agent/scripts/agent-cli.sh
#   # Or make executable: chmod +x .agent/scripts/agent-cli.sh && ./.agent/scripts/agent-cli.sh
#

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENT_ROOT="$(dirname "$SCRIPT_DIR")"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Check if Python is available
check_python() {
    if command -v python3 &> /dev/null; then
        PYTHON_CMD="python3"
        return 0
    elif command -v python &> /dev/null; then
        PYTHON_CMD="python"
        return 0
    else
        return 1
    fi
}

HAS_PYTHON=false
if check_python; then
    HAS_PYTHON=true
fi

# Show menu
show_menu() {
    clear
    echo ""
    echo -e "${CYAN}╔════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║       andy-universal-agent-rules CLI               ║${NC}"
    echo -e "${CYAN}╠════════════════════════════════════════════════════╣${NC}"
    echo -e "${WHITE}║ 1. 🔍 Search Knowledge                             ║${NC}"
    echo -e "${WHITE}║ 2. 💾 Save New Knowledge                           ║${NC}"
    echo -e "${WHITE}║ 3. 🔧 Run Maintenance                              ║${NC}"
    echo -e "${WHITE}║ 4. 💼 Backup Memory                                ║${NC}"
    echo -e "${WHITE}║ 5. 📊 Show Stats                                   ║${NC}"
    echo -e "${WHITE}║ 6. ✅ Validate Index                               ║${NC}"
    echo -e "${CYAN}╠════════════════════════════════════════════════════╣${NC}"
    echo -e "${WHITE}║ 0. ❌ Exit                                         ║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════╝${NC}"
    echo ""
    
    if [ "$HAS_PYTHON" = true ]; then
        echo -e "${GREEN}✅ Python detected ($PYTHON_CMD) - Full features available${NC}"
    else
        echo -e "${YELLOW}⚠️  Python not found - Using native scripts (limited)${NC}"
    fi
    echo ""
}

# Native search (fallback)
native_search() {
    local query="$1"
    local index_path="$AGENT_ROOT/memory/index.json"
    
    if [ ! -f "$index_path" ]; then
        echo -e "${RED}❌ index.json not found!${NC}"
        return
    fi
    
    echo -e "${CYAN}🔍 Searching for: $query${NC}"
    echo ""
    
    # Use grep for simple search
    local found=0
    for category in gotchas patterns decisions context; do
        local dir="$AGENT_ROOT/memory/entries/$category"
        if [ -d "$dir" ]; then
            for file in "$dir"/*.md; do
                if [ -f "$file" ]; then
                    if grep -qi "$query" "$file" 2>/dev/null; then
                        local title=$(head -1 "$file" | sed 's/^# //')
                        echo -e "${GREEN}[$category] $title${NC}"
                        echo "   File: $(basename "$file")"
                        echo ""
                        ((found++))
                    fi
                fi
            done
        fi
    done
    
    if [ $found -eq 0 ]; then
        echo -e "${YELLOW}No entries found matching '$query'${NC}"
    else
        echo -e "${GREEN}Found $found entries${NC}"
    fi
}

# Search knowledge
do_search() {
    echo ""
    read -p "🔍 Enter search query: " query
    if [ -z "$query" ]; then
        echo -e "${YELLOW}No query provided.${NC}"
        return
    fi
    
    echo ""
    if [ "$HAS_PYTHON" = true ]; then
        $PYTHON_CMD "$AGENT_ROOT/scripts/search-knowledge.py" "$query"
    else
        native_search "$query"
    fi
    echo ""
    read -p "Press Enter to continue..."
}

# Native save (fallback)
native_save() {
    local category="$1"
    local title="$2"
    local content="$3"
    
    # Generate filename
    local slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\+/-/g' | sed 's/^-//' | sed 's/-$//')
    local filename="${slug}.md"
    local filepath="$AGENT_ROOT/memory/entries/$category/$filename"
    
    # Create markdown content
    cat > "$filepath" << EOF
# $title

$content

---
*Created: $(date '+%Y-%m-%d %H:%M')*
EOF
    
    echo -e "${GREEN}✅ Saved to: $filepath${NC}"
    echo -e "${YELLOW}⚠️  Note: Run validate-index to update index.json${NC}"
}

# Save knowledge
do_save() {
    echo ""
    echo -e "${CYAN}💾 Save New Knowledge${NC}"
    echo ""
    echo "Categories: gotchas, patterns, decisions, context"
    read -p "Category: " category
    
    if [[ ! "$category" =~ ^(gotchas|patterns|decisions|context)$ ]]; then
        echo -e "${RED}Invalid category!${NC}"
        return
    fi
    
    read -p "Title: " title
    if [ -z "$title" ]; then
        echo -e "${RED}Title cannot be empty!${NC}"
        return
    fi
    
    echo "Content (press Ctrl+D when finished):"
    content=$(cat)
    
    if [ -z "$content" ]; then
        echo -e "${RED}Content cannot be empty!${NC}"
        return
    fi
    
    echo ""
    if [ "$HAS_PYTHON" = true ]; then
        $PYTHON_CMD "$AGENT_ROOT/scripts/save-knowledge.py" --category "$category" --title "$title" "$content"
    else
        native_save "$category" "$title" "$content"
    fi
    echo ""
    read -p "Press Enter to continue..."
}

# Run maintenance
do_maintenance() {
    echo ""
    echo -e "${CYAN}🔧 Running Maintenance...${NC}"
    echo ""
    
    if [ "$HAS_PYTHON" = true ]; then
        echo -n "1. Validating index..."
        $PYTHON_CMD "$AGENT_ROOT/scripts/validate-index.py" --fix > /dev/null 2>&1
        echo -e " ${GREEN}Done${NC}"
        
        echo -n "2. Creating backup..."
        $PYTHON_CMD "$AGENT_ROOT/scripts/backup-memory.py" > /dev/null 2>&1
        echo -e " ${GREEN}Done${NC}"
        
        echo -n "3. Detecting environment..."
        $PYTHON_CMD "$AGENT_ROOT/scripts/detect-environment.py" > /dev/null 2>&1
        echo -e " ${GREEN}Done${NC}"
        
        echo ""
        echo -e "${GREEN}✅ Maintenance complete!${NC}"
    else
        echo -e "${YELLOW}⚠️  Python required for full maintenance.${NC}"
        echo "Running native validation only..."
        do_validate
    fi
    echo ""
    read -p "Press Enter to continue..."
}

# Backup memory
do_backup() {
    echo ""
    if [ "$HAS_PYTHON" = true ]; then
        $PYTHON_CMD "$AGENT_ROOT/scripts/backup-memory.py"
    else
        echo -e "${CYAN}💼 Creating backup...${NC}"
        local timestamp=$(date '+%Y%m%d-%H%M%S')
        local backup_dir="$AGENT_ROOT/backups"
        local backup_file="$backup_dir/memory-$timestamp.tar.gz"
        
        mkdir -p "$backup_dir"
        tar -czf "$backup_file" -C "$AGENT_ROOT" memory
        echo -e "${GREEN}✅ Backup created: $backup_file${NC}"
    fi
    echo ""
    read -p "Press Enter to continue..."
}

# Show stats
show_stats() {
    echo ""
    echo -e "${CYAN}📊 Knowledge Base Stats${NC}"
    echo ""
    
    local index_path="$AGENT_ROOT/memory/index.json"
    if [ ! -f "$index_path" ]; then
        echo -e "${RED}❌ index.json not found!${NC}"
        return
    fi
    
    # Simple stats using grep/awk
    local total=$(grep -o '"totalEntries":[0-9]*' "$index_path" | cut -d: -f2)
    echo "Total Entries: $total"
    echo ""
    echo "By Category:"
    for category in gotchas patterns decisions context; do
        local count=$(ls -1 "$AGENT_ROOT/memory/entries/$category/"*.md 2>/dev/null | wc -l)
        echo "  - $category: $count"
    done
    echo ""
    read -p "Press Enter to continue..."
}

# Validate index
do_validate() {
    echo ""
    if [ "$HAS_PYTHON" = true ]; then
        $PYTHON_CMD "$AGENT_ROOT/scripts/validate-index.py" --report
    else
        local index_path="$AGENT_ROOT/memory/index.json"
        if [ ! -f "$index_path" ]; then
            echo -e "${RED}❌ index.json not found!${NC}"
            return
        fi
        
        # Check if valid JSON
        if python3 -c "import json; json.load(open('$index_path'))" 2>/dev/null || \
           python -c "import json; json.load(open('$index_path'))" 2>/dev/null; then
            echo -e "${GREEN}✅ index.json is valid JSON${NC}"
        else
            # Try with jq if available
            if command -v jq &> /dev/null; then
                if jq . "$index_path" > /dev/null 2>&1; then
                    echo -e "${GREEN}✅ index.json is valid JSON${NC}"
                else
                    echo -e "${RED}❌ index.json is invalid!${NC}"
                fi
            else
                echo -e "${YELLOW}⚠️  Cannot validate JSON (no jq or python)${NC}"
            fi
        fi
    fi
    echo ""
    read -p "Press Enter to continue..."
}

# Handle direct command
if [ "$1" = "exit" ]; then
    exit 0
fi

# Main loop
while true; do
    show_menu
    read -p "Select option: " choice
    
    case $choice in
        1) do_search ;;
        2) do_save ;;
        3) do_maintenance ;;
        4) do_backup ;;
        5) show_stats ;;
        6) do_validate ;;
        0)
            echo ""
            echo -e "${GREEN}Goodbye! 👋${NC}"
            exit 0
            ;;
        *)
            echo -e "${YELLOW}Invalid option. Please try again.${NC}"
            sleep 1
            ;;
    esac
done
