#!/bin/bash
backup_file="/backups/apache_backup_$(date +\%F).tar.gz"
tar -czf "$backup_file" /etc/apache2/ /var/www/html/
echo "Apache Backup created at $backup_file" >> /var/log/backup.log