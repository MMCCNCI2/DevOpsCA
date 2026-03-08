#!/usr/bin/env bash
sudo apt update && sudo apt install -y nodejs npm
sudo npm install -g pm2
pm2 stop devopsca || true
cd DevOpsCA/
npm install
echo "$PRIVATE_KEY" > privatekey.pem
echo "$SERVER" > server.crt
pm2 start ./bin/www --name devopsca
