# 🚀 System Operations Toolkit — Linux Automation & Monitoring

A production-style Bash automation toolkit built to monitor Linux system health, analyze logs, collect system information, and generate automated operational reports.

This project demonstrates practical Linux administration, shell scripting, automation, and DevOps engineering fundamentals.

---

# 📌 Project Overview

System Operations Toolkit is a collection of Bash scripts designed to automate common Linux system administration tasks.

Instead of manually checking CPU, memory, disk usage, and logs, this toolkit runs automated checks and creates a structured system report.

The project follows real-world DevOps practices:

* Automation over manual operations
* Reusable shell scripts
* Error handling and validation
* Clean Git workflow
* Operational reporting

---

# 🏗️ Architecture

```
                    User
                     |
                     |
              ./toolkit.sh
                     |
        --------------------------------
        |              |               |
        |              |               |
        v              v               v

 disk_usage.sh   system_health.sh   log_analyzer.sh

        |              |               |

        --------------------------------

                     |
                     v

        Automated System Report
        reports/system_report_DATE.txt
```

---

# ✨ Features

## 🔹 System Information Collection

Collects:

* Hostname
* Current user
* Operating system information
* Report generation timestamp

## 🔹 Disk Usage Monitoring

`disk_usage.sh`

Features:

* Checks all mounted partitions
* Displays filesystem usage
* Detects partitions above 80%
* Generates disk status reports

## 🔹 System Health Monitoring

`system_health.sh`

Monitors:

* CPU utilization
* Memory usage
* Root disk usage

Provides:

* Normal status
* Warning status when limits exceed thresholds

## 🔹 Log Analysis

`log_analyzer.sh`

Analyzes Linux system logs:

* Total log entries
* Error count
* Warning count
* Recent log activity

## 🔹 Automated Reporting

`toolkit.sh`

Creates a complete operational report containing:

* Disk analysis
* System health
* Log analysis
* Execution time
* Report summary

---

# 🛠️ Technologies Used

| Technology | Purpose                      |
| ---------- | ---------------------------- |
| Linux      | Operating system environment |
| Bash       | Automation scripting         |
| Git/GitHub | Version control              |
| ShellCheck | Script quality validation    |
| WSL Ubuntu | Development environment      |

---

# 📂 Project Structure

```
linux-scripts/

├── toolkit.sh
├── disk_usage.sh
├── system_health.sh
├── log_analyzer.sh
├── README.md
├── .gitignore
└── .github/
    └── workflows/
```

---

# ⚙️ Installation

Clone the repository:

```bash
git clone https://github.com/govind-yadav-IT/linux-scripts.git
```

Move into project:

```bash
cd linux-scripts
```

Give execution permission:

```bash
chmod +x *.sh
```

---

# ▶️ Usage

Run the complete toolkit:

```bash
./toolkit.sh
```

The toolkit automatically generates a system report.

Example:

```
reports/system_report_2026-07-12_05-47-08.txt
```

---

# 📊 Sample Report Output

```
========================================
System Operations Toolkit Report
========================================

Hostname:
Current User:
Operating System:

===== Disk Usage =====

Disk Status:
OK

===== System Health =====

CPU Usage:
Memory Usage:

===== Log Analysis =====

Errors Found:
Warnings Found:

Execution Time:
```

---

# 🔐 Git Strategy

Generated reports are ignored using `.gitignore`.

Repository stores:

✅ Automation scripts
✅ Documentation
✅ Configuration files

Repository does not store:

❌ Generated reports
❌ Temporary files
❌ Backup files

This follows professional DevOps repository practices.

---

# 🎯 Skills Demonstrated

* Linux system administration
* Bash scripting
* Shell automation
* File handling
* Process monitoring
* Log analysis
* Git workflow
* Repository management
* DevOps fundamentals

---

# 🚀 Future Improvements

Planned upgrades:

* Add email alert notifications
* Integrate Slack notifications
* Store reports in AWS S3
* Add Docker container support
* Add CI/CD validation pipeline
* Add Prometheus monitoring
* Create web dashboard for reports
* Add automated scheduling with Cron

---

# 👨‍💻 Author

**Govind Yadav**

BSc IT Student | Aspiring DevOps Engineer

Learning:
Linux • Cloud • Docker • CI/CD • Automation

---

⭐ If you find this project useful, feel free to explore and improve it.

