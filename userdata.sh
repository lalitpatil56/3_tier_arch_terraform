#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl start nginx
systemctl enable nginx

# Get public IPv4 address from EC2 metadata
PUBLIC_IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
#<h2>📡 Instance Public IPv4: <strong>$PUBLIC_IP</strong></h2>

cat <<EOF > /usr/share/nginx/html/index.html
<html>
  <head>
    <title>Welcome to the HA Static Web App!</title>
  </head>
  <body>
    <h1>Hello from your Terraform-powered EC2 Instance!</h1>
    <h2>This the world of technology</h2>
    </p>
    </p>
    <h2>Instance Public IPv4: <strong>$PUBLIC_IP</strong></h2>
  </body>
</html>
EOF