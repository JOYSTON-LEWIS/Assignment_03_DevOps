#!/bin/bash
backup_file="/backups/nginx_backup_$(date +\%F).tar.gz"
tar -czf $backup_file /etc/nginx/ /usr/share/nginx/html/
echo "Nginx Backup created at $backup_file" >> /var/log/backup.log