✅ README.md — DevOps Bash Game: System Health Checker 🚀

-----------------------------------------------------------------------------------------------------------------------------------------

🛠️ DevOps Bash Game – System Health Check CLI

A fun, interactive, and Professional-grade Bash Game designed to teach and demonstrate real-world DevOps and Linux administration skills. 

This project simulates a DevOps Operations Terminal, where the user navigates a menu-based CLI to perform health checks, view reports, and monitor disk space — just like a Junior DevOps Engineer would in production.


-----------------------------------------------------------------------------------------------------------------------------------------

🎯 Project Objectives

✅ Learn Bash scripting by building a hands-on, real-world tool  
✅ Showcase DevOps automation skills in interviews or your GitHub portfolio  
✅ Practice working with system commands, user input, logging, alerting, and menu interfaces  
✅ Make it fun, memorable, and educational


-----------------------------------------------------------------------------------------------------------------------------------------

📋 Features

| Feature 			| Description 						|
|-------------------------------|-------------------------------------------------------|
| 🔧 View System Status		| Shows memory, disk usage, and uptime			|
| 🧠 Top 5 Processes		| Lists top 5 CPU-heavy processes 			|
| 📉 Disk Usage Alerting	| Warns if disk usage exceeds 80% 			|
| 📄 Save Health Reports	| Logs a full report to a timestamped file 		|
| 🗂️ View Past Reports		| Opens and scrolls through saved reports interactively |
| 🎮 Menu-Based UX		| Clean CLI interface with colored outputs 		|


-----------------------------------------------------------------------------------------------------------------------------------------

🧪 Preview: Sample Menu

Welcome to DevOps Health Terminal 🎮

1. View System Status
2. Show Top 5 Processes
3. Check Disk Usage Summary
4. Save Full Health Report to Log File
5. View Previous Health Reports
6. Check Disk Space Alerts
7. Exit


-----------------------------------------------------------------------------------------------------------------------------------------

🔧 Requirements

- Linux or WSL (Windows Subsystem for Linux)
- Bash (v4+ recommended)
- Basic terminal access


-----------------------------------------------------------------------------------------------------------------------------------------

🚀 Run the Game


chmod +x system_health_game.sh
./system_health_game.sh


-----------------------------------------------------------------------------------------------------------------------------------------

📁 Where Reports Are Saved

All reports are saved in:
  ~/Shell-Scripting-WSL/Projects/devops-health-game/logs

Each file is timestamped and includes:
 ○ Memory stats
 ○ Disk usage
 ○ Uptime
 ○ Top processes
 ○ Disk space alerts


-----------------------------------------------------------------------------------------------------------------------------------------

📚 Concepts Covered

This project helps reinforce:

 ○ df, free, uptime, ps, awk, sed, less, read, mkdir, tr, head, tail
 ○ Logging and redirection
 ○ Conditional logic and control flow
 ○ User input handling
 ○ Bash functions and menu systems
 ○ Professional output formatting


-----------------------------------------------------------------------------------------------------------------------------------------

🧠 Why This Matters in DevOps

✅ Infrastructure monitoring
✅ Proactive alerting (disk space)
✅ Logging for audit and troubleshooting
✅ Command-line automation
✅ Reusable functions for scripting pipelines


-----------------------------------------------------------------------------------------------------------------------------------------

🏗️ Project Ideas for Expansion

🔁 Add a cron job to run health checks daily
📤 Integrate with email or Slack notifications
🌐 Serve log reports via a local web dashboard (e.g., Python Flask)
📈 Push reports into Grafana or ELK Stack


-----------------------------------------------------------------------------------------------------------------------------------------

📌 Author
Built by tk Myende — as part of a learning journey toward becoming a professional DevOps Engineer.

📬 Want to collaborate or chat about DevOps?
Reach out to me via GitHub or LinkedIn!


-----------------------------------------------------------------------------------------------------------------------------------------

📜 License

This project is open source and free to use under the MIT License.


-----------------------------------------------------------------------------------------------------------------------------------------



