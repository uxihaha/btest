wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
wget -O btpanel.zip http://download.bt.cn/install/update/LinuxPanel-7.7.0.zip && unzip btpanel.zip
cd btpanel
bash update.sh
rm -rf  /www/server/panel/data/bind.pl
