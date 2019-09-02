#! /bin/bash
#set -ex 调试命令
#报错直接停止
set -e     

#<------------------------------------------------> 
# 更新svn时
#本地svn路径
SVN_PATH=/Users/mac/Documents/workspace/svn/500out/game     # <---------------这里需要修改
#编译cordova路径
NPM_RUN_PATH=/Users/mac/Documents/workspace/svn/500out/game/web/WEB_APP    # <---------------这里需要修改
#<------------------------------------------------> 
   
#更新svn本地仓库#
cd ${SVN_PATH}
sudo svn update 
expect << EOF
set timeout 3600
expect "Password:" {send "789456\r"}
EOF
cd ${NPM_RUN_PATH}
npm run ios




