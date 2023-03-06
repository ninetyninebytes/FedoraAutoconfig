# FedoraAutoconfig
### A set of shell scripts to configure Fedora Linux to my personal preferences

---
## Features
- Has an option to download NVIDIA Drivers
- Installs RPM Fusion Repos (free and nonfree)
- Automatically configures packages
- Uses `wget` to download Google Chrome
	- Automatically installs these packages using DNF

## Notes
- Testing Status: **UNSTABLE**, Tested on Fedora Linux 37
- This project requires root privileges (just do sudo ./start.sh and you will be fine)
- This is intended for personal use (but you can use it too if you want)
- You NEED to have a working and stable internet connection (for package setup)
- You should use Fedora Linux for best compatibility
- **I will not take responsibility if you break your system, so please be careful!**

## Requirements
- BASH
- Git (optional)
- DNF Package Manager
- wget
- Fedora Linux (recommended, however this will work in any BASH terminal)

## Installation
1. Change the permissions for `bootstrap.sh` so that it is executable (dont worry, bootstrap will automatically configure permissions for the other shell scripts.)
	- just do `chmod +x bootstrap.sh` and you will be fine
2. Run `bootstrap.sh` with Root Privileges 
	- do `sudo ./bootstrap.sh`
3. Follow the on screen instructions

### Thanks for reading!
