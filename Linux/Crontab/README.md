# ⏰ Crontab Scripts for Linux Tactical RMM

This folder contains scripts for managing and verifying crontab entries on Linux systems.

## 📋 Scripts Overview

| Script | Category | Description |
|--------|----------|-------------|
| [Cron - ClamScan Entry.sh](Cron%20-%20ClamScan%20Entry.sh) | Cron | Manages ClamScan crontab entries |
| [Cron - Nala Update Entry.sh](Cron%20-%20Nala%20Update%20Entry.sh) | Cron | Manages Nala update crontab entries |
| [Cron - Weekly Reboot Entry.sh](Cron%20-%20Weekly%20Reboot%20Entry.sh) | Cron | Manages scheduled weekly reboot entries |

## 🎯 Usage

These scripts help configure automated tasks:
- Regular malware scans with ClamScan
- Package manager updates via Nala
- Scheduled system reboots

**Exit Codes:** 0 = entry exists/created, 1 = error/conflict
