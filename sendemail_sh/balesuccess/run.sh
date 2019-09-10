#!/bin/bash

#script name : sendemail.sh
XCODE_LOGFILE_PATH=/Users/mac/Documents/temporary/log/xcode
# 2200170656@qq.com 丘 sunshuo_1990@126.com 30m_3c4sifuum@dingtalk.com 智冲
array=(qiuduan6119@dingtalk.com 2677866009@qq.com sunshuo_1990@126.com 613623@qq.com)
# array=(sunshuo_1990@126.com)
account='448966707@qq.com' #发件箱
password='crnfstwdzeracaeb' #发件箱密码
SMTP_server='smtp.qq.com' #发件箱对应的stmp服务器

DIS_NAME=$(grep -i 'dis_500outgpc.ipa' ${XCODE_LOGFILE_PATH}/error.log)
DEV_NAME=$(grep -i 'dev_500outgpc.ipa' ${XCODE_LOGFILE_PATH}/error.log)

DIS_500CAI_NAME=$(grep -i 'dis_500cai.ipa' ${XCODE_LOGFILE_PATH}/error.log)
DEV_500CAI_NAME=$(grep -i 'dev_500cai.ipa' ${XCODE_LOGFILE_PATH}/error.log)

if [ -n "$DIS_NAME" ];then
    PK_NAME="500outgpc(正式服)"
else
    if [ -n "$DEV_NAME" ];then
    PK_NAME="500outgpc(测试服)"
    fi
fi

if [ -n "$DIS_500CAI_NAME" ];then
    PK_NAME="500cai(正式服)"
else
    if [ -n "$DEV_500CAI_NAME" ];then
    PK_NAME="500cai(测试服)"
    fi
fi

#收件邮箱
SUCCESS_NAME=$(grep -i 'Push successful.' ${XCODE_LOGFILE_PATH}/error.log)
if [ -n "$SUCCESS_NAME" ];then
subject=项目打包 #第二个参数(主题)
contentone=${PK_NAME}
contenttwo="https://zt.gzxstech.com/50x.html"
content="项目名字:""<br>""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;"${contentone}"<br>""安装地址:""<br>""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;"${contenttwo}
for to in ${array[@]}
do
sendemail -f $account -t $to -s $SMTP_server -u $subject -o message-content-type=html -o message-charset=utf-8 -xu $account -xp $password -m $content
done
else
subject=项目打包 #第二个参数(主题)
content=${PK_NAME}"<br>""打包失败!!!(请联系管理员---15966817776)"
for to in ${array[@]}
do
sendemail -f $account -t $to -s $SMTP_server -u $subject -o message-content-type=html -o message-charset=utf-8 -xu $account -xp $password -m $content
done
fi


