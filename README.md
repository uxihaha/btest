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

# 若有自己的证书，则在宝塔面板设置中开启SSL，然后点击同意开启后，上传自己的证书到www/server/panel/ssl目录下，修改key文件为privateKey.pem，修改pem文件为certificate.pem，完成后输入/etc/init.d/bt restart即可尝试https协议访问宝塔面板。

# 问题
宝塔新建网站，报错：Invalid version. The only valid version for X509Req is 0.

解决方案
第一步：
打开/www/server/panel/class下的acme_v2.py，Ctrl+F搜索：X509Req.set_version(2)，替换为：X509Req.set_version(0)，记得保存。

第二步：
终端执行以下三个命令
btpip install pyOpenSSL==22.1.0

btpip install cffi==1.14

bt 1 


                            
