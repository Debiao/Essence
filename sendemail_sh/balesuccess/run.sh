#!/bin/bash
#script name : sendemail.sh
XCODE_LOGFILE_PATH=/Users/mac/Documents/temporary/log/xcode
# 2200170656@qq.com 丘 sunshuo_1990@126.com 30m_3c4sifuum@dingtalk.com 智冲
array=(qiuduan6119@dingtalk.com 2677866009@qq.com sunshuo_1990@126.com 613623@qq.com)
# array=(sunshuo_1990@126.com)
account='448966707@qq.com' #发件箱
password='crnfstwdzeracaeb' #发件箱密码
SMTP_server='smtp.qq.com' #发件箱对应的stmp服务器

NAME=error
grep -i '.ipa' /Users/mac/Documents/temporary/log/xcode/error.log
case $(grep -i '.ipa' ${XCODE_LOGFILE_PATH}/error.log) in
        "dis_500outgpc.ipa")
        NAME=股彩(正式服)
        ;;
        "dev_500outgpc.ipa")
        NAME=股彩(测试服)
        ;;
esac 
#收件邮箱
if [ $(grep -i 'Push successful.' ${XCODE_LOGFILE_PATH}/error.log) == 'Push successful.' ] then;
subject=打包 #第二个参数(主题)
content=$NAME'打包成功!!! 请到这个网址安装https://zt.gzxstech.com/50x.html'
for to in ${array[@]}
do
sendemail -f $account -t $to -s $SMTP_server -u $subject -o message-content-type=html -o message-charset=utf-8 -xu $account -xp $password -m $content
done
else
subject=打包 #第二个参数(主题)
content=$NAME打包失败!!!(请联系管理员---15966817776)
for to in ${array[@]}
do
sendemail -f $account -t $to -s $SMTP_server -u $subject -o message-content-type=html -o message-charset=utf-8 -xu $account -xp $password -m $content
done
fi

