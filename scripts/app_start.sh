#!/bin/bash
cd //home/ec2-user/Project/POTLdemo/client/src
PORT=3030 npm start
pm2 start npm --name "potl app" -- start
pm2 startup
pm2 save
pm2 restart all