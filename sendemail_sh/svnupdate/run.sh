#!/bin/bash
#script name : sendemail.sh
VERSION_FILE=/Users/mac/Documents/temporary/log/svn
# 2200170656@qq.com 丘 sunshuo_1990@126.com
# array=(qiuduan6119@dingtalk.com 30m_3c4sifuum@dingtalk.com sunshuo_1990@126.com)
array=(sunzhixin_20@163.com huiyan1123@163.com Angelo@gzxstech.com 2677866009@qq.com sunshuo_1990@126.com Tanny@gzxstech.com  rex@gzxstech.com Ade@gzxstech.com Lucy@gzxstech.com Weidong@gzxstech.com 358758218@qq.com xingfu@gzxstech.com)
# array=(sunshuo_1990@126.com)
account='448966707@qq.com' #发件箱
password='crnfstwdzeracaeb' #发件箱密码
SMTP_server='smtp.qq.com' #发件箱对应的stmp服务器

declare -a names

#收件邮箱
subject=svn迭代版本 #第二个参数(主题)
#contentone=$(grep -i '^Updated' ${VERSION_FILE}/*.log) #第三个参数(内容)
# for i in `ls ${VERSION_FILE}/*.log`; 
# do 
# echo $i
# names[${array[@]}]=$i
# #$(grep '[1-9]' $i; echo -e "\n$i");
# done


path=${VERSION_FILE}
files=$(ls $path)
for filename in $files
do
names[${#names[@]}]="&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;"${filename%--*}"&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;"$(grep -i "revision" ${VERSION_FILE}/$filename)"<br>"
# echo $(grep -i '^Updated' ${VERSION_FILE}/$filename)
# contentone="<br>"$(grep -i '^Updated' ${VERSION_FILE}/$filename)
done

# echo $contentone
# echo  ${names[@]}
# for((i=0;i< ${#names[*]};i++));  
# do   
# # teamp1="<br>"$(grep -i '^Updated' ${VERSION_FILE}/${names[]})
# echo  ${names[@]}
# done 

contentone=${names[@]}
contenttwo=$(grep -i "revision" ${VERSION_FILE}/error.log) #第三个参数(内容)
content="当前版本:""<br>""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;""&nbsp;"${contenttwo}"<br>""历史版本:""<br>"${contentone}
for to in ${array[@]}
do
sendemail -f $account -t $to -s $SMTP_server -u $subject -o message-content-type=html -o message-charset=utf-8 -xu $account -xp $password -m $content
done