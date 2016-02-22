# Linux backup script

## Install

Open up your terminal window

Create a new group for executing backup operations

`sudo addgroup backup-operator`

Add yourself to the newly created group

`sudo adduser <your-username> backup-operator`

Create a new directory for your backups

`sudo mkdir -p /usr/local/bin/backup`

Give the new group full permissions on the newly created directory

`sudo chgrp backup-operator /usr/local/bin/backup`
`sudo chmod g+rwx /usr/local/bin/backup`


git clone https://github.com/pedro2555/linux-backup-scripts.git /usr/local/bin/backup
