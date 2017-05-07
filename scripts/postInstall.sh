#!/bin/bash

chkconfig nginx on

# YOLO Mode: Disable SELINUX
echo "SELINUX=disabled" > /etc/sysconfig/selinux

# Stage our HTML files
rm -rf /usr/share/nginx/html/*
mv /html/* /usr/share/nginx/html/

# More YOLO Mode
chmod 777 /usr/share/nginx/html/*
