#!/bin/sh
#
#1、创建目录/tmp/scripts
#2、切换工作目录至此目录中
#3、复制/etc/pam.d目录至当前目录，并重命令为test
#4、将当前目录中的test及其里面的文件和子目录的属主改为redhat
#5、将test及其子目录中的文件的其它用户的权限改为没有任何权限
id | grep root &> /dev/null
[ $? -ne 0 ] && echo "must be root user!!!" && exit 1
DIR=/tmp/scripts
mkdir -p $DIR
cd $DIR
cp -R /etc/pam.d test
chmod -R o-rwx test
chown -R lfs test
