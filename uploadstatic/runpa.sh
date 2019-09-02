#! /bin/bash
set -e

SRC=/Users/mac/Documents/workspace/Essence/uploadstatic/package/dis_500out.ipa
DES=/data/ios/500out/500out

echo "Upload to local server Should enter!"

read -p '是否继续执行?[y/n]' select
if [ $select == 'y' ];then
expect << EOF
set timeout 3600
spawn scp -r ${SRC} root@zt.gzxstech.com:${DES}
expect "#" {send "exit\r"}
EOF
echo "push successful"
elif [ $select == 'n' ];then
    echo '退出'
    exit 33
fi