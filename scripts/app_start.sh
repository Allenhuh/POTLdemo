#!/bin/bash
cd //home/ec2-user/Project/POTLdemo/client/src
PORT=3030 npm start
PORT=3030 pm2 start npm --name "potltest" -- start
pm2 startup
pm2 save
pm2 restart all