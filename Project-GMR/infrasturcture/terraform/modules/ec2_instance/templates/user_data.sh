#!/bin/bash

#install git in amazon linux
sudo yum install git -y

# Update system packages
sudo yum update -y

# Install Nginx
sudo amazon-linux-extras install nginx1 -y

# Start Nginx and enable it to start on boot
sudo systemctl start nginx
sudo systemctl enable nginx

# Change to the Nginx directory
cd /usr/share/nginx/

# Remove the default HTML directory
sudo rm -rf html

# Clone the Git repository
sudo git clone https://github.com/Chaitanya6746/StaticWebPage.git

# Move the cloned directory to the web server directory
sudo mv StaticWebPage html

# Restart Nginx to apply changes
sudo systemctl restart nginx
