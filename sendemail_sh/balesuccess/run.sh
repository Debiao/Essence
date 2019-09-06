#!/bin/bash
#script name : sendemail.sh
VERSION_FILE=/Users/mac/Documents/temporary/log/svn
# 2200170656@qq.com 丘 sunshuo_1990@126.com 30m_3c4sifuum@dingtalk.com 智冲
array=(qiuduan6119@dingtalk.com 2677866009@qq.com sunshuo_1990@126.com 613623@qq.com)
# array=(sunshuo_1990@126.com)
account='448966707@qq.com' #发件箱
password='crnfstwdzeracaeb' #发件箱密码
SMTP_server='smtp.qq.com' #发件箱对应的stmp服务器

#收件邮箱
subject=打包 #第二个参数(主题)
content='打包成功!!! 请到这个网址安装https://zt.gzxstech.com/50x.html'
#$(grep -i '^Updated' ${VERSION_FILE}/*.log) #第三个参数(内容)
for to in ${array[@]}
do
sendemail -f $account -t $to -s $SMTP_server -u $subject -o message-content-type=html -o message-charset=utf-8 -xu $account -xp $password -m $content
done