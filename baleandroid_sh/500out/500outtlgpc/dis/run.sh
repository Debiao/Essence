#! /bin/bash
#set -ex 调试命令
#报错直接停止
set -e     
#获取当前时间
TIME=$(date "+%Y-%m-%d-%H-%M-%S---")

#<------------------------------------------------>                  
# 上传服务器时用  
#远程服务器上的路径
SERVER_PATH=/data/Android/500out/500outtlgpc      
#<------------------------------------------------>  


#编译cordova路径
NPM_RUN_PATH=/Users/mac/Documents/workspace/svn/500out/game/web/WEB_APP_500outtlgpc_dis    # <---------------这里需要修改
cd ${NPM_RUN_PATH}
npm run android-build

#<------------------------------------------------> 


# if [ ! -d ./IPADir ];
# then
#     mkdir -p IPADir;
#     echo "创建路径成功"
# else
#     #rm -rf IPADir/*
#     if [ -f ${IPADir_PATH}/${IPA_NAME} ];then
#         cp  ${IPADir_PATH}/${IPA_NAME}  ${IPADir_PATH}/${TIME}${IPA_NAME}
#         rm -rf ${IPADir_PATH}/${IPA_NAME}
#         if [ $? -eq 0 ];then
#         echo ${IPA_NAME} "备份成功"
#         else
#         echo ${IPA_NAME} "备份失败"
#         fi
#     else
#         echo '!!!' ${IPA_NAME} '不存在'
#     fi 
# fi




if [ -f ${IPADir_PATH}/${IPA_NAME} ];then
    #expect "password:" {send "gzxs311.!@#\r"}
expect << EOF
    set timeout 3600
    spawn scp -r  /Users/mac/Documents/workspace/svn/500out/game/web/WEB_APP_500outtlgpc_dis/platforms/android/app/build/outputs/apk/release/app-release.apk root@zt.gzxstech.com:${SERVER_PATH}
    expect "#" {send "exit\r"}
EOF

        if [ $? -ne 0 ];then
                echo "Error,please try again."
                exit
        else
                echo "Push successful. "
        fi

    else
        echo '!!! 发布包不存在.'
fi


echo ''
echo '///-------------'
echo '/// 发布完成'
echo '///-------------'
echo ''

open -a /Applications/Google\ Chrome.app https://zt.gzxstech.com/50x.html


echo ''
echo '///-------------'
echo '/// 到此结束.'
echo '///-------------'
echo ''



############## END ##############

