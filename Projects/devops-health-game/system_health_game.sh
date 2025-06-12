#!/bin/bash


#=============================
# DevOps Health Check Game
#=============================



#Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color


#Log Directory and file
LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/system_health.log"
mkdir -p "$LOG_DIR"
clear



#=========================================================
#FUNCTIONS - in bash, functions must be defined before they're called


#1. Function: Display System status
view_system_status() {
    echo -e "\n${YELLOW}---- Memory Usage ----${NC}"
    free -h


    echo -e "\n${YELLOW}---- Disk Usage ----${NC}"
    df -h #| grep '^/dev/' #| column -t #filter only mounted partitions


    echo -e "\n${YELLOW}---- System Uptime ----${NC}"
    uptime -p


    echo ""
 }



#2. Function:  Display Top 5 CPU Processes
show_top_proceses(){
    echo -e "\n${yellow}---- Top 5 Processess by CPU Usage ----${NC}"
    echo -e "${GREEN}%-8s %-10s %-8s %s${NC}" "PID" "USER" "%CPU" "COMMAND"

    ps -eo pid,user,%cpu,comm --sort=-%cpu | head -n 6 | tail -n 5 | while read pid user cpu command; do
	printf "%-8s %-10s %-8s %s\n" "$pid" "$user" "$cpu" "command"
    done


    echo ""
 }



#3. Fuction: Full Health Check Report (to Screen Only)
run_full_health_report(){

  echo -e "\n${YELLOW}==== System Health Check ====${NC}"


  echo -e "\n${YELLOW}--- Memory Usage ---${NC}"
  free -h


  echo -e "\n${YELLOW}--- Disk Usage ---${NC}"
  df -h | grep '^/dev/'


  echo -e "\n${YELLOW}--- System Uptime ---${NC}"
  uptime -p


  echo -e "\n${yellow}---- Top 5 Processess by CPU Usage ----${NC}"
  ps -eo pid,user,%cpu,comm --sort=-%cpu | head -n 6 | tail -n 5 | while read pid user cpu command; do
	printf "%-8s %-10s %-8s %s\n" "$pid" "$user" "$cpu" "command"
  done


  echo -e "\n${YELLOW}--- Disk Space Alerts (10%) ---${NC}"
  df -h --output=pcent,target | tail -n +2 | while read output; do
    USEP=$(echo "$output" | awk '{print $1}' | tr -d '%')
    PARTITION=$( echo "$output" | awk '{print $2}' )
    if [ "$USEP" -ge 10 ]; then
	echo -e "${RED}Warning:${NC} Partition ${PARTITION} is ${USEP}% full."
    fi
  done


  echo -e "\n${GREEN}>> Health Check Complete.${NC}\n"

 }



#4. Fuction: Save Full Health Report to Log file
save_report_to_log(){

  #Define Log Directory & Filename
  LOG_DIR=~/Shell-Scripting-WSL/Projects/devops-health-game/logs

  TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
  LOG_FILE="$LOG_DIR/system_health_$TIMESTAMP.log"


  #Ensure the Log directory exists
  mkdir -p "$LOG_DIR"


  #Begin log
  {
	echo "====================================="
	echo "==== System Health Report: $TIMESTAMP ====="
	echo "====================================="


	echo -e "\n--- Memory Usage ---"
	free -h


	echo -e "\n--- Disk Usage ---"
	df -h | grep '^/dev/'


	echo -e "\n--- System Uptime ---"
	uptime -p


	echo -e "\n---- Top 5 Processess by CPU ----"
	ps -eo pid,user,%cpu,comm --sort=-%cpu | head -n 6 | tail -n 5 | while read pid user cpu command; do
	    printf "%-8s %-10s %-8s %s\n" "$pid" "$user" "$cpu" "command"
	done


	echo -e "\n--- Disk Space Alerts (10%) ---"

	df -h --output=pcent,target | tail -n +2 | while read output; do
	  USEP=$(echo "$output" | awk '{print $1}' | tr -d '%')
	  PARTITION=$( echo "$output" | awk '{print $2}' )
	  if [ "$USEP" -ge 10 ]; then
	      echo -e "Warning: Partition ${PARTITION} is ${USEP}% Full."
	  fi
	done


	echo "==== END OF REPORT====="
  } >> "$LOG_FILE"



  echo -e "\n${GREEN}>> Report Save to: ${LOG_FILE}${NC}\n"

 }
#end function






#==========================================================

# Control shift 6	   -> set mark
# Alt 6			   -> Copy
# Cotrol k		   -> Cut
# Control U		   -> Paste


#========================================================
#Game Welcome && Menu Loop


#Welcome Message
echo -e "\n${GREEN}========================================"
echo -e "     Welcome to tk's HealthCheck"
echo -e "========================================${NC}"
sleep 1
echo -e "\nYou're the Jr. DevOps Engineer on duty. \nYour mission: Run diagnostics and keep the system stable. \n"


#Menu Loop
while true; do
  echo -e "${YELLOW}Main Menu:${NC}"
  echo "1. View System Status"
  echo "2. View Top 5 Processes"
  echo "3. Run Full Health Check Report"
  echo "4. Save Report to Log File"
  echo -e "5. Exit\n"
  read -p "Choose an Option [1-5]: " choice


  case "$choice" in
   1)
	echo -e "\n${GREEN}>> Viewing System Status...${NC}"
	view_system_status
	;;
   2)
	echo -e "\n${GREEN}>> Showing Top 5 Processes...${NC}"
	show_top_proceses
	;;
   3)
	echo -e "\n${GREEN}>> Running Full Health Check...${NC}"
	run_full_health_report
	;;
   4)
	echo -e "\n${GREEN}>> Saving Report to $LOG_FILE...${NC}"
	save_report_to_log
	;;
   5)
	echo -e "\n${YELLOW}Exiting Mission Health Check. Goodbye.${NC}"
	break
	;;
   *)
	echo -e "\n${RED}Invalid choice. Please select 1-5.${NC}"
	;;
  esac

  echo ""
  read -p "Press [ENTER] to return to the menu...."
  clear
done

#while true; do....done
#ANSI Color codes
#tk uyafunda

# Control Shift underscore -> goes to a specific line

# Control shift 6	   -> set mark
# Alt 6			   -> Copy
# Cotrol k		   -> Cut
# Control U		   -> Paste






















