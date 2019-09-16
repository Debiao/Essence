#!/bin/bash

HOSTNAME="127.0.0.1"  #数据库信息

PORT="3306"

USERNAME="root"

PASSWORD="Sun900930"

DBNAME="admin_v5"  #数据库名称

TABLENAME="wechat_keys" #数据库中表的名称

# select_sql="select * from ${TABLENAME} order by id DESC limit 1"
select_sql_type="select type from ${TABLENAME} order by id DESC limit 1"
select_sql_content="select content from ${TABLENAME} order by id DESC limit 1"
select_sql_image_url="select image_url from ${TABLENAME} order by id DESC limit 1"
select_sql_keys="select voice_url from ${TABLENAME} order by id DESC limit 1"
select_sql_name="select music_url from ${TABLENAME} order by id DESC limit 1"

db_data_type=`mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_type}" | awk 'NR>1'`
db_data_content=`mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_content}" | awk 'NR>1'`
db_data_image_url=`mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_image_url}" | awk 'NR>1'`
db_data_keys=`mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_keys}" | awk 'NR>1'`
select_sql_name=`mysql -h ${HOSTNAME} -P${PORT} -u${USERNAME} -p${PASSWORD}  ${DBNAME} -e "${select_sql_name}" | awk 'NR>1'`

DES=/data/ios/500out/500out

expect << EOF
set timeout 3600
spawn ssh root@192.168.3.11
expect "#" {send "cd ${DES}\r"}
expect "#" {send "curl -o ${select_sql_name}.ipa ${db_data_image_url}\r"}
expect "#" {send "exit\r"}
EOF
echo "push successful"