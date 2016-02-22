# Linux backup script

## Install

Open up your terminal window

Create a new group for executing backup operations, and add yourself to it
```
  sudo addgroup backup-operator
  sudo adduser <your-username> backup-operator
```
Close your session and log back in.
Create a new directory for backup operations, a give the new group full permissions
```
  sudo mkdir -p /usr/local/bin/backup
  sudo chgrp backup-operator /usr/local/bin/backup
  sudo chmod g+rwx /usr/local/bin/backup
```
Download the backup scripts, and configure setup your cronjob
```
  git clone https://github.com/pedro2555/linux-backup-scripts.git /usr/local/bin/backup
```
