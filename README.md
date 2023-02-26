
# Ubuntu server setup

Download the ISO
---
    https://releases.ubuntu.com/22.04.2/ubuntu-22.04.2-live-server-amd64.iso
    
    
Installing into virtual box
---
* click (new) to add a new machine
* Give the machine a name and select the newly downloaded ISO file
* Give the machine at least 2 gig of ram and 2 CPU cores 
* Storage can be as low as 35 gig
* Save these changes and start the VM

Install process
---

Language selection

* (x) English

Update installer
* (x) update to the new installer


Keyboard selection

* (x) English (us)

Base selection

* (x) Ubuntu Server

Network configuration
---

Virtual machine

* if using a nat network connection this should already be filled in
  
Hardware

* Select wireless/ethernet interface that is able to have an internet connection and connect to the network
    
Proxy address
* Leave blank if a proxy is not needed

Mirror address
* (us) http://us.archive.ubuntu.com/ubuntu
* (aus) http://au.archive.ubuntu.com/ubuntu



Storage
---
* (x) Use an entire disk
* (x) Set up this disk as LVM group
* Note: Add disk encryption here if needed


Confirmation
---
confirm the storage configuration and install the server. Note this will erase the disk
    
Upgrade to ubuntu pro
* (x) Skip for now

Install openssh
* (x) Install openssh
* Note: not needed

Installing snaps
* Leave all snaps blank for a minimal install


Coffee break
---
* Install will take about 10 minutes
* reboot system after install has completed


Login
---
* Login as new user 
* Check for internet connection


Desktop installation
---
    curl https://raw.githubusercontent.com/subordinarycode/ubuntuDesktop/main/debianSetup.sh > debianSetup.sh && chmod +x debianSetup.sh
    ./debianSetup.sh
    

Notes
---
This project was undertaken with the aim of creating a reliable machine that could be booted from almost any device. 
The primary goal was to minimize the system's footprint by installing only essential tools, resulting in a lean and optimized device that met the user's specific requirements.


Why?
---

* A minimal installation of Ubuntu allows more control over the system.
* A minimal installation can typically improve performance and make the system more efficient. 
* A minimal installation can run in resource-constrained environments. 




