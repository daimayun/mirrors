#!/bin/bash
suffix=`date +%Y%m%d%H%m%s`
cp /etc/apt/sources.list /etc/apt/sources.list.$suffix.backup
cd /etc/apt/
rm sources.list
echo 'deb http://mirrors.aliyun.com/debian/ bullseye main non-free contrib' > /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/debian/ bullseye main non-free contrib' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/debian-security/ bullseye-security main' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/debian-security/ bullseye-security main' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/debian/ bullseye-backports main non-free contrib' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/debian/ bullseye-backports main non-free contrib' >> /etc/apt/sources.list
