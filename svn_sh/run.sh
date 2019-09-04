#! /bin/bash
#set -ex 调试命令
#报错直接停止
set -e     

#<------------------------------------------------> 
# 更新svn时
#本地svn路径
SVN_PATH=/Users/mac/Documents/workspace/svn/500out/game     # <---------------这里需要修改
LOG_PATH=/Users/mac/Documents/temporary/log
#<------------------------------------------------> 

#更新svn本地仓库#
cd ${SVN_PATH}
sudo svn update 
expect << EOF
set timeout 360
expect Password: {send "789456\r"}
EOF

sudo chmod -R 777 ${SVN_PATH}
expect << EOF
set timeout 360
expect Password: {send "789456\r"}
EOF

open ${LOG_PATH}




