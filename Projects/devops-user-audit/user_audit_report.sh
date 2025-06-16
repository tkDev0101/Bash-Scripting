#!/bin/bash

echo "=============================="
echo "User Audit Report Generator"
echo "For System Administrators & DevOps Engineers"
echo -e "==============================\n"


# Variables
LOG_DIR=~/Shell-Scripting-WSL/Projects/devops-user-audit/logs
mkdir -p "$LOG_DIR"

DATE=$(date '+%Y-%m-%d_%H-%M')
LOG_FILE="$LOG_DIR/user_audit_$DATE.log"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color


#=========================================================
#Functions

# Function 1: List Real Users
list_real_users() {
    echo -e "\n${YELLOW}--- Real (Human) Users ---${NC}"
    awk -F: '($3>=1000)&&($7!="/usr/sbin/nologin")&&($7!="/bin/false") {
        printf "%-15s UID: %-6s Home: %-20s Shell: %s\n", $1, $3, $6, $7
    }' /etc/passwd
}




#=========================================================

# Menu
while true; do
    echo -e "\n${YELLOW}=== USER AUDIT TERMINAL ===${NC}"
    echo "1) List real (human) users"
    echo "2) Check password expiration info"
    echo "3) Show last login per user"
    echo "4) Generate full audit report"
    echo "0) Exit"
    read -p "Choose an option: " choice


    case "$choice" in
        1) 
            echo -e "${GREEN}>> Listing real users...${NC}"
            list_real_users
            ;;

        
        2) echo -e "${GREEN}>> Checking password expiration...${NC}" ;;
        3) echo -e "${GREEN}>> Showing last login...${NC}" ;;
        4) echo -e "${GREEN}>> Generating full audit report...${NC}" ;;
        0) echo "Exiting. Goodbye!"; break ;;
        *) echo -e "${RED}Invalid choice, try again.${NC}" ;;
    esac
done
\
