#!/bin/bash
cd //home/ec2-user/Project/POTLdemo/client/src
npm start
pm2 start npm --name "potl app" -- start
pm2 startup
pm2 save
pm2 restart all