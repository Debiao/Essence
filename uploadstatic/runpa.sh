#! /bin/bash
set -e
echo "Upload to local server Should enter!"
SRC=/Users/mac/Documents/workspace/Essence/upsource/ipa
DES=/data/bdcf
expect << EOF
set timeout 3600
spawn scp -r ${SRC}  root@192.168.3.11:${DES}
#expect "password:" {send "gzxs311.!@#\r"}
expect "#" {send "exit\r"}
EOF

echo
echo "push successful"
