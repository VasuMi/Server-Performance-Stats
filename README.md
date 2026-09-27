----------------------------------
  Linux Server Performance Stats
----------------------------------
A Bash script that analyzes basic Linux server performance statistics.

The script collects CPU, memory, disk, and process information and displays the results in a simple terminal report.

## Features

### Required Statistics

* Total CPU usage
* Total memory usage
* Used and free memory
* Memory usage percentage
* Total disk usage
* Used and free disk space
* Disk usage percentage
* Top 5 processes by CPU usage
* Top 5 processes by memory usage

### Additional Statistics

* Operating system version
* Server uptime
* Load average
* Number of logged-in users

## Technologies

* Bash
* Linux
* Linux system utilities
* Git/GitHub

## Linux Commands Used

The script uses standard Linux commands including:

* `top` — CPU and process information
* `free` — memory usage
* `df` — disk usage
* `ps` — running processes
* `awk` — text processing and calculations
* `grep` — searching text
* `head` — selecting output lines
* `uptime` — uptime and load information
* `who` — logged-in users

## How to Run

Clone the repository:

```bash
git clone https://github.com/YOUR-USERNAME/server-performance-stats.git
```

Enter the project directory:

```bash
cd server-performance-stats
```

Make the script executable:

```bash
chmod +x server-stats.sh
```

Run the script:

```bash
./server-stats.sh
```

## Example Output

```text
========================================
       SERVER PERFORMANCE STATS
========================================

CPU USAGE
----------------------------------------
Total CPU Usage : 7.40%

MEMORY USAGE
----------------------------------------
               total        used        free
Mem:           7.7Gi       2.4Gi       4.1Gi

Memory Usage Percentage : 31.25%

DISK USAGE
----------------------------------------
total          251G         85G        166G        34%

TOP 5 PROCESSES BY CPU
----------------------------------------
PID     USER      %CPU    %MEM    COMMAND
...

TOP 5 PROCESSES BY MEMORY
----------------------------------------
PID     USER      %CPU    %MEM    COMMAND
...

SYSTEM INFORMATION
----------------------------------------
OS       : Ubuntu
Uptime   : ...
Load Avg : ...
Users    : 1
```

## Outcomes

This project demonstrates basic Linux system administration and Bash scripting skills, including:

* System resource monitoring
* Process monitoring
* Bash scripting
* Linux command-line tools
* Pipes and command substitution
* Text processing with `awk` and `grep`
* Linux file permissions
* Git and GitHub

## Project Purpose

This project was created to practice Linux administration, shell scripting, and basic DevOps monitoring concepts.

Project URL: https://roadmap.sh/projects/server-stats
