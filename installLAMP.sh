#!/bin/bash
curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash
yum install mariadb mariadb-server httpd -y
systemctl start httpd mariadb
systemctl enable mariadb httpd
