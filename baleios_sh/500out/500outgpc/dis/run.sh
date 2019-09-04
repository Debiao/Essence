#! /bin/bash
#set -ex 调试命令
#报错直接停止
set -e     

#<------------------------------------------------>                  
# 上传服务器时用
#Ipa默认包名
IPA_NAME=dis_500outgpc.ipa  
#远程服务器上的路径
SERVER_PATH=/data/ios/500out/500outgpc        
#<------------------------------------------------>  

LOG_PATH=/Users/mac/Documents/temporary/log
cd ${LOG_PATH}
rm -rf *

#编译cordova路径
NPM_RUN_PATH=/Users/mac/Documents/workspace/svn/500out/game/web/WEB_APP_500outgpc_dis    # <---------------这里需要修改
cd ${NPM_RUN_PATH}
npm run ios-min

#<------------------------------------------------> 
# 打包api时用
#工程名
PROJECT_NAME=股彩    # <---------------这里需要修改
#scheme名
SCHEME_NAME=股彩    # <---------------这里需要修改
#<------------------------------------------------> 


# 打包时用
#IOS工程路径
IOS_PATH=/Users/mac/Documents/workspace/svn/500out/game/web/WEB_APP_500outgpc_dis/platforms/ios       # <---------------这里需要修改
#判断IPA是否存在路径
IPADir_PATH=${IOS_PATH}/IPADir/Debug   # <---------------这里需要修改
#Plist所在路径
PLIST_PATH=/Users/mac/Documents/workspace/Essence/project_plist/500out/500outgpc/dis/plist/       # <---------------这里需要修改

#<------------------------------------------------> 

#获取当前时间
TIME=$(date "+%Y-%m-%d-%H-%M-%S---")

#打包ipa#
cd ${IOS_PATH}
#工程绝对路径
PROJECT_PATH=$(cd `dirname $0`; pwd)

if [ ! -d ./IPADir ];
then
    mkdir -p IPADir;
    echo "创建路径成功"
else
    #rm -rf IPADir/*
    if [ -f ${IPADir_PATH}/${IPA_NAME} ];then
        cp  ${IPADir_PATH}/${IPA_NAME}  ${IPADir_PATH}/${TIME}${IPA_NAME}
        rm -rf ${IPADir_PATH}/${IPA_NAME}
        if [ $? -eq 0 ];then
        echo ${IPA_NAME} "备份成功"
        else
        echo ${IPA_NAME} "备份失败"
        fi
    else
        echo '!!!' ${IPA_NAME} '不存在'
    fi 
fi

#删除旧build文件
rm -rf build

#打包模式 Debug/Release
development_mode=Debug

#build文件夹路径
build_path=${PROJECT_PATH}/build

#导出.ipa文件所在路径
exportIpaPath=${PROJECT_PATH}/IPADir/${development_mode}
echo "文件路径:".$exportIpaPath

development_mode=Debug
exportOptionsPlistPath=${PLIST_PATH}/exportTest.plist

echo '///-----------'
echo '/// 正在清理工程'
echo '///-----------'
xcodebuild \
clean -configuration ${development_mode} -quiet  || exit
echo ''

echo '///--------'
echo '/// 清理完成'
echo '///--------'
echo ''

echo '///-----------'
echo '/// 正在编译工程:'${development_mode}
echo '///-----------'
echo ''

xcodebuild \
archive -workspace ${PROJECT_PATH}/${PROJECT_NAME}.xcworkspace \
-scheme ${SCHEME_NAME} \
-configuration ${development_mode} \
-archivePath ${build_path}/${PROJECT_NAME}.xcarchive  -quiet  || exit

echo ''
echo '///--------'
echo '/// 编译完成'
echo '///--------'
echo ''

echo '///----------'
echo '/// 开始ipa打包'
echo '///----------'
echo ''

xcodebuild -exportArchive -archivePath ${build_path}/${PROJECT_NAME}.xcarchive \
-configuration ${development_mode} \
-exportPath ${exportIpaPath} \
-exportOptionsPlist ${exportOptionsPlistPath} \
-quiet || exit
echo ''

if [ -e $exportIpaPath/$SCHEME_NAME.ipa ]; then
mv $exportIpaPath/$SCHEME_NAME.ipa $exportIpaPath/$IPA_NAME
echo '///----------'
echo '/// ipa包已导出'
echo '///----------'
echo ''
open $exportIpaPath
else
echo '///-------------'
echo '/// ipa包导出失败 '
echo '///-------------'
echo ''
fi
echo '///------------'
echo '/// 打包ipa完成  '
echo '///------------'
echo ''

#上传本地服务器#
echo '///-------------'
echo '/// 开始发布ipa包 '
echo '///-------------'
echo ''


if [ -f ${IPADir_PATH}/${IPA_NAME} ];then
    #expect "password:" {send "gzxs311.!@#\r"}
expect << EOF
    set timeout 3600
    spawn scp -r  ${IPADir_PATH}/${IPA_NAME}  root@zt.gzxstech.com:${SERVER_PATH}
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

