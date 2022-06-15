wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
wget http://download.bt.cn/install/update/LinuxPanel-7.7.0.zip && unzip LinuxPanel-7.7.0.zip
cd LinuxPanel-7.7.0.zip/panel
bash update.sh
rm -rf  /www/server/panel/data/bind.pl
