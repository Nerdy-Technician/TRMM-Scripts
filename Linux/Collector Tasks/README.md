# 🚀 Collector Tasks Scripts for Linux Tactical RMM

Welcome to the **Collector Tasks** folder! This folder contains scripts designed to collect system information and verify critical services on Linux agents running with Tactical RMM.

## 📋 Scripts Overview

| Script | Category | Description |
|--------|----------|-------------|
| [Check - Docker Service.sh](Check%20-%20Docker%20Service.sh) | Check | Verifies if Docker service is running |
| [Check - SSH Service.sh](Check%20-%20SSH%20Service.sh) | Check | Verifies if SSH service is running |
| [Check - Third Party Patch Status.sh](Check%20-%20Third%20Party%20Patch%20Status.sh) | Check | Checks third-party patch status |
| [Agent - ClamAV Status.sh](Agent%20-%20ClamAV%20Status.sh) | Agent | Checks if ClamAV/ClamScan is running |
| [Collect - SSH Port.sh](Collect%20-%20SSH%20Port.sh) | Collect | Retrieves the configured SSH port (even if non-standard) |
| [Security - SSH Root Access.sh](Security%20-%20SSH%20Root%20Access.sh) | Security | Verifies root SSH access is disabled |
| [Security - UFW Status.sh](Security%20-%20UFW%20Status.sh) | Security | Checks UFW firewall status |
| [Software Management - Nala Install Status.sh](Software%20Management%20-%20Nala%20Install%20Status.sh) | Software Management | Checks if Nala package manager is installed (installs if missing) |
| [Software Management - Unattended Upgrades Status.sh](Software%20Management%20-%20Unattended%20Upgrades%20Status.sh) | Software Management | Verifies unattended-upgrades installation and status |

## 📝 Notes

- **Nala Project:** Learn more at [https://gitlab.com/volian/nala](https://gitlab.com/volian/nala)
- **UFW Setup:** See [Security - UFW Provision.sh](../Security/UFW/Security%20-%20UFW%20Provision.sh) for firewall provisioning
- **Exit Codes:** 0 = OK, 1 = alert/failure, 2 = secondary state

## 🎯 Recommended Usage

These scripts are ideal for:
- Daily service health checks
- Security verification
- System inventory collection
- Automated compliance checks

Integrate these scripts with Tactical RMM automation rules for continuous monitoring.
