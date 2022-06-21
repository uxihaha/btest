wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
unzip LinuxPanel-7.7.0.zip && rm LinuxPanel-7.7.0.zip
cd panel
bash update.sh
sed -i “s|if (bind_user == ‘True’) {|if (bind_user == ‘REMOVED’) {|g” /www/server/panel/BTPanel/static/js/index.js
rm -rf  /www/server/panel/data/bind.pl
bt 14
