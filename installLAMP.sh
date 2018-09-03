#!/bin/bash
#!/usr/bin/env bash
# install apache and latest version of mariadb
# wget -O - https://raw.githubusercontent.com/bobbyxi000/Install-LAMP-Stack/master/installLAMP.sh | sudo bash
curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash
yum install mariadb mariadb-server httpd -y
systemctl start httpd mariadb
systemctl enable mariadb httpd

