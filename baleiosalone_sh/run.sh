#! /bin/bash
#set -ex 调试命令
#报错直接停止
set -e     

#<------------------------------------------------>                  
# 上传服务器时用
#Ipa默认包名
IPA_NAME=apple.ipa  
#远程服务器上的路径
SERVER_PATH=/data/bdcf/         
#<------------------------------------------------>  


#<------------------------------------------------> 
# 打包api时用
#工程名
PROJECT_NAME=500OUT    # <---------------这里需要修改
#scheme名
SCHEME_NAME=500OUT    # <---------------这里需要修改
#<------------------------------------------------> 


#<------------------------------------------------> 
# 更改服务器时
#本地dev路径
DEV_PATH=/Users/sundebiao/Desktop/190715workspace/projectconfigurationfile/500out/dev/util.js       # <---------------这里需要修改
#本地dis路径
DIS_PATH=/Users/sundebiao/Desktop/190715workspace/projectconfigurationfile/500out/dis/util.js       # <---------------这里需要修改
#本地svn配置路径
SVN_SERVER_PATH=/Users/sundebiao/500out/game/web/APP_WEB/js/util.js
#本地DEV配置文件
DEV_CONFIG_PATH=//Users/sundebiao/Desktop/190715workspace/projectconfigurationfile/500out/dev/
#本地DIS配置文件
DIS_CONFIG_PATH=/Users/sundebiao/Desktop/190715workspace/projectconfigurationfile/500out/dis/
#<------------------------------------------------> 


#<------------------------------------------------> 
# 更新svn时
#本地svn路径
SVN_PATH=/Users/sundebiao/500out/game       # <---------------这里需要修改
#编译Cordova路径
NPM_RUN_PATH=/Users/sundebiao/500out/game/web/WEB_APP    # <---------------这里需要修改
#<------------------------------------------------> 


#<------------------------------------------------> 
# 打包时用
#IOS工程路径
IOS_PATH=/Users/sundebiao/500out/game/web/WEB_APP/platforms/ios        # <---------------这里需要修改
#判断IPA是否存在路径
IPADir_PATH=/Users/sundebiao/500out/game/web/WEB_APP/platforms/ios/IPADir/Debug         # <---------------这里需要修改
#Plist所在路径
PLIST_PATH=/Users/sundebiao/Desktop/190715workspace/perfection/plist          # <---------------这里需要修改

#<------------------------------------------------> 


#获取当前时间
TIME=$(date "+%Y-%m-%d-%H-%M-%S---")

#更新svn本地仓库#
echo ''
echo '--------svn-start--------'
echo ''
echo "Place enter the number you want to export ? [ 1:update 2:constant ]"

read number
while([[ $number != 1 ]] && [[ $number != 2 ]])
do
echo "Error! Should enter 1 or 2"
echo "Place enter the number you want to export ? [ 1:update 2:constant ]"
read number
done

if [ $number == 1 ];then
cd ${SVN_PATH}
svn update
cp -r ${SVN_SERVER_PATH} ${DEV_PATH}
cp -r ${SVN_SERVER_PATH} ${DIS_PATH}
fi

echo ''
echo "Place enter the number you want to export ? [ 1:OpenDis 2:OpenDev ]"

read number
while([[ $number != 1 ]] && [[ $number != 2 ]])
do
echo "Error! Should enter 1 or 2"
echo "Place enter the number you want to export ? [ 1:OpenDis 2:OpenDev ]"
read number
done

if [ $number == 1 ];then
open ${DIS_CONFIG_PATH}
else
open ${DEV_CONFIG_PATH}
fi


echo ''
echo '--------svn-end--------'
echo ''
echo ''



#选择服务器#
echo '--------server-start--------'
echo ''
echo "Place enter the number you want to export ? [ 1:dis-server 2:dev-server ] "

read number
while([[ $number != 1 ]] && [[ $number != 2 ]])
do
echo "Error! Should enter 1 or 2"
echo "Place enter the number you want to export ? [ 1:dis-server 2:dev-server ] "
read number
done

if [ $number == 1 ];then
cp -r ${DEV_PATH} ${SVN_SERVER_PATH}
# sed -i "" "s/.*var baseUrl = \"http:\/\/127.0.0.1:8080\/LYMS\/api\/platform\/\";  \/\/测试服务器/\/\/ var baseUrl = \"http:\/\/127.0.0.1:8080\/LYMS\/api\/platform\/\";  \/\/测试服务器/" ${SVN_SERVER_PATH}
# sed -i "" "s/.*var baseUrl = 'http:\/\/192.168.56.6\/LYMS\/api\/platform\/' \/\/ 开发服/var baseUrl = 'http:\/\/192.168.56.6\/LYMS\/api\/platform\/' \/\/ 开发服/" ${SVN_SERVER_PATH}
#正试服IPA包名
IPA_NAME=dis500OUT.ipa           
else
cp -r ${DIS_PATH} ${SVN_SERVER_PATH}
# sed -i "" "s/.*var baseUrl = \"http:\/\/127.0.0.1:8080\/LYMS\/api\/platform\/\";  \/\/测试服务器/ var baseUrl = \"http:\/\/127.0.0.1:8080\/LYMS\/api\/platform\/\";  \/\/测试服务器/" ${SVN_SERVER_PATH}
# sed -i "" "s/.*var baseUrl = \'http:\/\/192.168.56.6\/LYMS\/api\/platform\/\' \/\/ 开发服/\/\/var baseUrl = \'http:\/\/192.168.56.6\/LYMS\/api\/platform\/\' \/\/ 开发服/" ${SVN_SERVER_PATH}
#测试服IPA包名
IPA_NAME=dev500OUT.ipa         
fi

echo ''
echo '--------server-end--------'
echo ''
echo ''



#编译Cordova#
echo '--------run-start--------'
echo ''
echo "Place enter the number you want to export ? [ 1:run 2:run-min ]"

read number
while([[ $number != 1 ]] && [[ $number != 2 ]])
do
echo "Error! Should enter 1 or 2"
echo "Place enter the number you want to export ? [ 1:run 2:run-min ]"
read number
done

cd ${NPM_RUN_PATH}

if [ $number == 1 ];then
npm run ios
else
npm run ios-min
fi

echo ''
echo '--------run-end--------'
echo ''
echo ''



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
echo ''
echo "Place enter the number you want to export ? [ 1:app-store 2:ad-hoc] "

##
read number
while([[ $number != 1 ]] && [[ $number != 2 ]])
do
echo "Error! Should enter 1 or 2"
echo "Place enter the number you want to export ? [ 1:app-store 2:ad-hoc] "
read number
done

if [ $number == 1 ];then
development_mode=Release
exportOptionsPlistPath=${PLIST_PATH}/exportAppstore.plist
else
development_mode=Debug
exportOptionsPlistPath=${PLIST_PATH}/exportTest.plist
fi

echo ''
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

echo "Place enter the number you Build type ? [ 1:xcodeproj 2:xcworkspace] "

##
read bType
while([[ $bType != 1 ]] && [[ $bType != 2 ]])
do
echo "Error! Should enter 1 or 2"
echo "Place enter the number you Build type ? [ 1:xcodeproj 2:xcworkspace] "
read bType
done

if [ $bType == 1 ];then
xcodebuild \
archive -project ${PROJECT_PATH}/${PROJECT_NAME}.xcodeproj \
-scheme ${SCHEME_NAME} \
-configuration ${development_mode} \
-archivePath ${build_path}/${PROJECT_NAME}.xcarchive   -quiet  || exit
else
xcodebuild \
archive -workspace ${PROJECT_PATH}/${PROJECT_NAME}.xcworkspace \
-scheme ${SCHEME_NAME} \
-configuration ${development_mode} \
-archivePath ${build_path}/${PROJECT_NAME}.xcarchive  -quiet  || exit
fi

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
#open $exportIpaPath
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

echo "Place enter the number you want to export ? [ 1:App Store 2:Publishing server ]"

read number
while([[ $number != 1 ]] && [[ $number != 2 ]])
do
echo "Error! Should enter 1 or 2"
echo "Place enter the number you want to export ? [ 1:App Store 2:Publishing server ]"
read number
done

if [ $number == 1 ];then
    #验证并上传到App Store
    # 将-u 后面的XXX替换成自己的AppleID的账号，-p后面的XXX替换成自己的密码
    altoolPath="/Applications/Xcode.app/Contents/Applications/Application Loader.app/Contents/Frameworks/ITunesSoftwareService.framework/Versions/A/Support/altool"
    "$altoolPath" --validate-app -f ${exportIpaPath}/${SCHEME_NAME}.ipa -u XXX -p XXX -t ios --output-format xml
    "$altoolPath" --upload-app -f ${exportIpaPath}/${scheme_name}.ipa -u  XXX -p XXX -t ios --output-format xml
else
    if [ -f ${IPADir_PATH}/${IPA_NAME} ];then
    #expect "password:" {send "gzxs311.!@#\r"}
expect << EOF
    set timeout 3600
    spawn scp -r  ${IPADir_PATH}/${IPA_NAME}  root@192.168.3.11:${SERVER_PATH}
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
fi

echo ''
echo '///-------------'
echo '/// 发布完成'
echo '///-------------'
echo ''


echo "Place enter the number you want to export ? [ 1:Install IPA 2:Open Web ]"

read number
while([[ $number != 1 ]] && [[ $number != 2 ]])
do
echo "Error! Should enter 1 or 2"
echo "Place enter the number you want to export ? [ 1:Install IPA 2:Open Web ]"
read number
done

if [ $number == 1 ];then
echo ${IPADir_PATH}/${IPA_NAME}
ideviceinstaller -i ${IPADir_PATH}/${IPA_NAME}
else
open -a "/Applications/Google Chrome Canary.app" http://192.168.3.11/50.html
fi

echo ''
echo '///-------------'
echo '/// 到此结束.'
echo '///-------------'
echo ''

exit 0

############## END ##############

