#!/bin/bash
#set -ex 调试命令
#报错直接停止
set -e     
#获取当前时间
TIME=$(date "+%Y-%m-%d-%H-%M-%S---")
APK_NAME=app-release.apk
APN_NEW_NAME=dis_500out.apk
APK_PATH=/Users/mac/Documents/workspace/svn/500out/game/web/WEB_APP_500out_dis/platforms/android/app/build/outputs/apk/release

#<------------------------------------------------>                  
# 上传服务器时用  
#远程服务器上的路径
SERVER_PATH=/data/Android/500out/500out     
#<------------------------------------------------>  


# #编译cordova路径
NPM_RUN_PATH=/Users/mac/Documents/workspace/svn/500out/game/web/WEB_APP_500out_dis    # <---------------这里需要修改
cd ${NPM_RUN_PATH}

npm run android-build

#<------------------------------------------------> 


if [ -f ${APK_PATH}/${APK_NAME} ];then
        cd ${APK_PATH}
        mv ${APK_NAME} ${APN_NEW_NAME}
        cp  ${APK_PATH}/${APN_NEW_NAME}  ${APK_PATH}/${TIME}${APN_NEW_NAME}
        rm -rf ${APK_PATH}/${APK_NAME}
        if [ $? -eq 0 ];then
        echo ${APN_NEW_NAME} "备份成功"
        else
        echo ${APN_NEW_NAME} "备份失败"
        fi
    else
        echo '!!!' ${APK_NAME} '不存在'
    fi 


if [ -f ${APK_PATH}/${APN_NEW_NAME} ];then
    #expect "password:" {send "gzxs311.!@#\r"}
expect << EOF
    set timeout 360
    spawn scp -r ${APK_PATH}/${APN_NEW_NAME} root@zt.gzxstech.com:${SERVER_PATH}
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

# open -a /Applications/Google\ Chrome.app https://zt.gzxstech.com/50x.html


echo ''
echo '///-------------'
echo '/// 到此结束.'
echo '///-------------'
echo ''



############## END ##############

