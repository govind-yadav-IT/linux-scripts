
cd ~/Scripts
cat > README.md << 'EOF'
# Linux Scripts

A collection of Linux automation and DevOps scripts built during hands-on learning.

## Scripts

### disk_usage.sh
Monitors disk usage across all partitions and warns when any partition exceeds 80%.

### system_health.sh
Complete system health monitor checking CPU, memory, and disk usage with OK/WARNING status.

### log_analyzer.sh
Analyzes any log file — counts total lines, errors, and warnings. Shows last 5 lines.

### check_path.sh
Checks disk usage for any directory path provided as argument.

### backup.sh
Backs up all shell scripts to a timestamped directory.

### arguments_practice.sh
Demonstrates bash script arguments — $1, $2, $# usage.

### functions_practice.sh
Demonstrates bash functions — writing reusable code blocks.

### hello_system.sh
Uses environment variables to display system information.

## CI/CD
Every push triggers automatic syntax checking and shellcheck analysis via GitHub Actions.

## Technologies
- Bash Shell Scripting
- Linux System Administration
- GitHub Actions CI/CD
- AWS EC2 Deployment

## Author
Govind Ramkumar Yadav | BSc IT | Mumbai | Aspiring DevOps Engineer
GitHub: github.com/govind-yadav-IT
