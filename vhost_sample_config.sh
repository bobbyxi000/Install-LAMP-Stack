mkdir /etc/httpd/sites-available
mkdir /etc/httpd/sites-enabled
touch /etc/httpd/sites-available/itop.conf
cd /etc/httpd/sites-available/
cat << EOF >> itop.conf
<VirtualHost *:80>
        RewriteEngine On
        RewriteRule ^ https://%{SERVER_NAME}%{REQUEST_URI} [END,NE,R=permanent]
</VirtualHost>
<VirtualHost *:443>
        DocumentRoot /var/www/html/itop
        ErrorLog logs/error.log
        CustomLog logs/access.log combined
        SSLEngine on
        <Directory /var/www/html/itop>
                Require all granted
        </Directory>
        SSLCertificateFile /etc/ssl/certs/apache-selfsigned.crt
        SSLCertificateKeyFile /etc/ssl/private/apache-selfsigned.key
</VirtualHost>
EOF
