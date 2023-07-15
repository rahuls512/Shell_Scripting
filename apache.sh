#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
sudo wget "https://www.free-css.com/assets/files/free-css-templates/download/page292/fables.zip"
sudo unzip fables.zip
sudo cp -r fables/* /var/www/html
sudo systemctl restart httpd
