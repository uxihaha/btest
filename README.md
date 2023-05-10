# btest
# 宝塔面板降级绕过手机号登录
#  执行sh bt.sh 

Linux中有两种防火墙软件，ConterOS7.0以上使用的是firewall，ConterOS7.0以下使用的是iptables，本文将分别介绍两种防火墙软件的使用。
Firewall
# 开启防火墙：
#  systemctl start firewalld
# 关闭防火墙：
#  systemctl stop firewalld
查看防火墙状态：
systemctl status firewalld
设置开机启动：
systemctl enable firewalld
复制代码
禁用开机启动：
systemctl disable firewalld
重启防火墙：
firewall-cmd --reload
开放端口（修改后需要重启防火墙方可生效）：
firewall-cmd --zone=public --add-port=8080/tcp --permanent
查看开放的端口：
firewall-cmd --list-ports
关闭端口：
firewall-cmd --zone=public --remove-port=8080/tcp --permanent

