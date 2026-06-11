# Linux Scripts

A collection of Linux automation scripts built during my DevOps learning journey.

## Scripts

### disk_usage.sh
Monitors disk usage across all partitions and warns when any partition exceeds 80% usage.

**Usage:**
```bash
./disk_usage.sh
```

**Features:**
- Checks all mounted partitions
- Displays OK or WARNING status for each partition
- Saves timestamped reports to disk_report.txt

## Author
Govind | BSc IT | Aspiring DevOps Engineer
### system_health.sh
Monitors overall system health — CPU usage, memory usage, and disk usage.

**Usage:**
```bash
./system_health.sh
```

**Features:**
- Checks CPU usage and warns above 80%
- Checks memory usage and warns above 80%
- Checks disk usage and warns above 80%
- Generates timestamped health reports
