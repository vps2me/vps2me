#!/bin/bash
# 更新系统
apt-get update
apt-get upgrade -y

# 安装screen pip3
apt-get install python3-pip -y
apt-get install screen -y
apt-get update

# ubuntu15.04或更高版本安装ffmpeg
#apt-get update
#apt-get install ffmpeg -y

# ffmpeg
apt-get install python-software-properties software-properties-common -y
add-apt-repository ppa:kirillshkrogalev/ffmpeg-next -y
apt-get update
apt-get install ffmpeg -y
# 安装pcs
cd ~
apt-get install git build-essential libcurl4-openssl-dev libssl-dev -y
git clone https://github.com/GangZhuo/BaiduPCS.git
cd BaiduPCS
make clean
make
make install
pcs set --captcha_file=/var/www/html/captch.gif
# 一些脚本
cd ~
wget --no-check-certificate https://raw.githubusercontent.com/vps2me/vps2me/master/pdup.sh
chmod +x pdup.sh
wget --no-check-certificate https://raw.githubusercontent.com/vps2me/vps2me/master/delall.sh
chmod +x delall.sh
wget --no-check-certificate https://raw.githubusercontent.com/vps2me/vps2me/master/bdup.sh
chmod +x bdup.sh
wget --no-check-certificate https://raw.githubusercontent.com/vps2me/vps2me/master/updir.sh
chmod +x updir.sh
# 下载bpcs-uploader
apt-get install php5 php5-cli -y
apt-get install curl -y
apt-get install unzip -y
apt-get install php7 -y
/etc/init.d/apache2 restart
wget https://github.com/oott123/bpcs_uploader/zipball/master
rm -rf /var/www/html/index.html
cd ~
