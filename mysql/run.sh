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

db_data_pwd=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_pwd}" | awk 'NR>1'`
db_data_ip=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_ip}" | awk 'NR>1'`
db_data_path=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_path}" | awk 'NR>1'`
db_data_image=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_image}" | awk 'NR>1'`
select_sql_name=`/usr/local/mysql/bin/mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_name}" | awk 'NR>1'`



expect << EOF
set timeout 360
spawn ssh root@${db_data_ip}
expect "#" {send "cd ${db_data_path}\r"}
# expect "#" {send "curl -o ${select_sql_name}.ipa ${db_data_image}\r"}
expect "#" {send "wget --no-check-certificate 192.168.3.70:8000/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa\r"}
# expect "#" {send "wget http://zt.gzxstech.com:666/upload/53eefbfebd91fc17/33c21c45ae7a1725.ipa\r"}
expect "#" {send "exit\r"}
EOF

echo "push successful"

