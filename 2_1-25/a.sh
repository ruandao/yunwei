#/bin/sh
#
#1、创建目录/tmp/scripts
#2、切换工作目录至此目录中
#3、复制/etc/pam.d目录至当前目录，并重命令为test
#4、将当前目录中的test及其里面的文件和子目录的属主改为redhat
#5、将test及其子目录中的文件的其它用户的权限改为没有任何权限
D=/tmp/scripts
mkdir -p $D
cd $D
cp /etc/pam.d . -r
mv pam.d test
chown -R lfs test
chmod -R 000 test
