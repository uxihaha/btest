wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
unzip LinuxPanel-7.6.0.zip && rm *.zip
cd panel
bash update.sh
rm -rf  /www/server/panel/data/bind.pl
bt 6
bt 5
bt 14
