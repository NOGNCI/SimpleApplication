{\rtf1\ansi\ansicpg1252\cocoartf2708
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/usr/bin/env bash \
\
\
sudo apt update && sudo apt install nodejs npm\
\
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.\
sudo npm install -g pm2\
\
# stop any instance of our application running currently\
pm2 stop simple_app\
\
# change directory into folder where application is downloaded\
cd SimpleApplication\
\
# Install application dependancies\
npm install\
\
# echo $PRIVATE_KEY > privatekey.pem\
# echo $SERVER > server.crt\
\
# Start the application with the process name example_app using pm2\
pm2 start ./bin/www --name simple_app}