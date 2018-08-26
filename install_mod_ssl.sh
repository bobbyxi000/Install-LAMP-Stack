#!/bin/bash
#!/usr/bin/env bash
# install mod_ssl and self-signed certificate
yum install mod_ssl -y
mkdir /etc/ssl/private
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt




