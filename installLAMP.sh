#!/bin/bash
#!/usr/bin/env bash
# install apache and latest version of mariadb
curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash
yum install mariadb mariadb-server httpd -y
systemctl start httpd mariadb
systemctl enable mariadb httpd
