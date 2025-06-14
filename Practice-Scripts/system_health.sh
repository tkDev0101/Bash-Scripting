#!/bin/bash

#===========================
#System Health Checker
#Logs system health details into a Log
#========================================
#cp file.txt ~/Documents/


#VAIABLES
DATE=$(date)

#Define log directory and Log File path
LOG_DIR=~/devops-projects
LOG_FILE=$LOG_DIR/system_health.log

#Ensure the log directory exists
mkdir -p $LOG_DIR


#Write the Header
echo "=====================================================================" >> $LOG_FILE
echo "=== System Health Report: $DATE ===" >> $LOG_FILE



# 1. Memory  usage
echo "" >> $LOG_FILE
echo "--- Memory Usage ---" >> $LOG_FILE
free -h >> $LOG_FILE

#free -h shows human-readable memory stats; append it to the log



# 2. Disk Usage
echo "" >> $LOG_FILE
echo "--- Disk Usage ---" >> $LOG_FILE
df -h >> $LOG_FILE

# df -h shows disk space usage; append it to the log



# 3. Uptime
echo "" >> $LOG_FILE
echo "--- System Uptime ---" >> $LOG_FILE
uptime -p >> $LOG_FILE

#uptime -p gives a pretty uptime string



# 4. Top Processes
echo "" >> $LOG_FILE
echo "--- Top 5 Processes by CPU Usage ---" >>$LOG_FILE
ps aux --sort=-%cpu | head -n 6 >> $LOG_FILE

#ps aux -> shows all running processes
# --sort=-%cpu -> sorts them by highest cpu usage
#head -n 6 -> top 5 + header(so we cut at line 6)

#sorts by memory decsending; take top 5 after header



# 5. Disk Space Alerts
echo "" >> $LOG_FILE
echo "--- Disk Space Alerts(10%+) ---" >> $LOG_FILE
df -h --output=pcent,target | tail -n +2 | while read output; do
	USEP=$(echo $output | awk '{print $1}' | tr -d '%')
	PARTITION=$(echo $output | awk '{print $2}')
	if [ "$USEP" -ge 10 ]; then
	   echo "Warning: Partition $PARTITION is ${USEP}% full." >>$LOG_FILE
	fi
done

echo "" >> $LOG_FILE
echo "=============== END_OF_LOG ===============" >> $LOG_FILE
echo "" >> $LOG_FILE









