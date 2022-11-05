#!/bin/bash
su -c "mkdir -p ~/ts3_db_backups/"
su -c "tar cfvz ~/ts3_db_backups/latest.tar.gz ~/teamspeak3-server_linux_amd64"
su -c "wget $(curl -s https://www.teamspeak.com/en/downloads/#server | grep -o 'https://files.teamspeak-services.com/releases/server/.*/teamspeak3-server_linux_amd64-.*.tar.bz2' | head -n1) -O ~/latest.tar.bz2"
su -c "tar -xjf ./latest.tar.bz2 -C ~"