#!/bin/bash
HOSTNAME="127.0.0.1"  #数据库信息

PORT="3306"

USERNAME="root"

PASSWORD="Sun900930"

DBNAME="admin_v5"  #数据库名称

TABLENAME="wechat_keys" #数据库中表的名称

# select_sql="select * from ${TABLENAME} order by id DESC limit 1"
select_sql_pwd="select type from ${TABLENAME} order by id DESC limit 1"
select_sql_ip="select content from ${TABLENAME} order by id DESC limit 1"
select_sql_path="select image_url from ${TABLENAME} order by id DESC limit 1"
select_sql_image="select voice_url from ${TABLENAME} order by id DESC limit 1"
select_sql_name="select music_title from ${TABLENAME} order by id DESC limit 1"
select_sql_user="select video_title from ${TABLENAME} order by id DESC limit 1"
select_sql_port="select video_desc from ${TABLENAME} order by id DESC limit 1"

db_data_pwd=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_pwd}" | awk 'NR>1'`
db_data_ip=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_ip}" | awk 'NR>1'`
db_data_path=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_path}" | awk 'NR>1'`
db_data_image=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_image}" | awk 'NR>1'`
db_data_name=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_name}" | awk 'NR>1'`
db_data_user=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_user}" | awk 'NR>1'`
db_data_port=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_port}" | awk 'NR>1'`

#wget -o ${select_sql_name}.ipa --no-proxy --no-cookies --no-check-certificate https://zt.gzxstech.com/ios/500out/500outgpc/dis_500outgpc.ipa
#expect "#" {send "curl -o ${select_sql_name}.ipa ${db_data_image}\r"}

if [ "$db_data_user" = "root"]; then
CAPTURESYMBOL="#"
else
CAPTURESYMBOL="~"
fi


strA="$db_data_image"
strB="upload"
# echo $strA
# echo /Users/mac/Documents/workspace/Rabbit/public/upload${strA#*upload}
# echo ${strA##*/}
result=$(echo $strA | grep "${strB}") 


if [ "192.168.3.11" = "$db_data_ip" ];then
if [ -n "$result" ]; then
# echo "yes"
expect << EOF
set timeout 360
spawn scp -r /Users/mac/Documents/workspace/Rabbit/public/upload${strA#*upload} $db_data_user@$db_data_ip:${db_data_path}
expect "#" {send "exit\r"}
EOF
expect << EOF
set timeout 360
spawn ssh $db_data_user@${db_data_ip}
expect "#" {send "cd ${db_data_path}\r"}
expect "#" {send "mv ${strA##*/} $db_data_name.ipa\r"}
expect "#" {send "exit\r"}
EOF
else
# echo "no"
expect << EOF
set timeout 360
spawn ssh $db_data_user@${db_data_ip}
expect "#" {send "cd ${db_data_path}\r"}
expect "#" {send "wget -O ${db_data_name}.ipa --no-proxy --no-cookies --no-check-certificate ${db_data_image}\r"}
expect "#" {send "exit\r"}
EOF
fi
else
if [ -n "$result" ]; then
# echo "yes"
expect << EOF
set timeout 360
spawn scp -r -P $db_data_port /Users/mac/Documents/workspace/Rabbit/public/upload${strA#*upload} $db_data_user@$db_data_ip:$db_data_path 
expect "password:" {send "${db_data_pwd}\r"}
expect "$CAPTURESYMBOL" {send "exit\r"}
EOF
echo $CAPTURESYMBOL
expect << EOF
set timeout 360
spawn ssh $db_data_user@${db_data_ip} -p $db_data_port
expect "password:" {send "${db_data_pwd}\r"}
expect $CAPTURESYMBOL {send "cd ${db_data_path}\r"}
expect $CAPTURESYMBOL {send "mv ${strA##*/} $db_data_name.ipa\r"}
expect ${db_data_path} {send "exit\r"}
EOF
else
# echo "no"
expect << EOF
set timeout 360
spawn ssh $db_data_user@${db_data_ip} -p $db_data_port
expect "password:" {send "${db_data_pwd}\r"}
expect $CAPTURESYMBOL {send "cd /${db_data_path}\r"}
expect $CAPTURESYMBOL {send "wget -O ${db_data_name}.ipa --no-proxy --no-cookies --no-check-certificate ${db_data_image}\r"}
expect ${db_data_path} {send "exit\r"}
EOF
fi
fi

echo "push successful"

