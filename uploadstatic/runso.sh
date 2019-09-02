#! /bin/bash
set -e

SRC=/Users/mac/Documents/workspace/Essence/uploadstatic/source/50x.html
DES=/data

echo "Upload to local server Should enter!"

read -p '是否继续执行?[y/n]' select
if [ $select == 'y' ];then
expect << EOF
set timeout 3600
spawn scp -r ${SRC} root@zt.gzxstech.com:${DES}
#spawn scp -r ${SRC} root@:192.168.3.11:${DES}
#expect "password:" {send "gzxs311.!@#\r"}
expect "#" {send "exit\r"}
EOF
echo "push successful"
elif [ $select == 'n' ];then
    echo '退出'
    exit 33
fi

# expect << EOF
# set timeout 300
# spawn ssh root@192.168.3.11
# #expect "password:" {send "gzxs311.!@#\r"}
# expect "#" {send "rm -rf /data/bdcf/bdcfts/.DS_Store\r"}
# expect "#" {send "mv -f /data/bdcf/bdcfts/50.html /data/bdcf/\r"}
# expect "#" {send "mv -f /data/bdcf/bdcfts/50x.html /data/bdcf/\r"}
# expect "#" {send "ls ${DES}\r"}
# expect "#" {send "ls -A ${DES}/bdcfts\r"}
# expect "#" {send "exit\r"}
# EOF
