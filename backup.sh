#!/bin/bash

# create backup path
mkdir -p /usr/local/bin/backup/

# compute backup archive name
backup_file=backup$(date '+%y.%m.%d-%H.%M.%S').tar.gz

# create backup file
tar -cpzf /usr/local/bin/backup/$backup_file --exclude=/usr/local/bin/backup/* --one-file-system /home

# checksum the new archive
cd /usr/local/bin/backup
sha1sum $backup_file > $backup_file.sha1

# find and delete old archives
cd /usr/local/bin/backup
ls -tp | grep 'tar.gz' |  grep -v '/' | tail -n +5 | xargs -d '\n' rm --
cd /usr/local/bin
