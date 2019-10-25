#!/bin/bash
USER="root"               
PASSWORD="Sun900930"      
DATABASE="admin_v5"   
HOSTNAME="localhost"

BACKUP_DIR=/Users/mac/Documents/workspace/Essence/mysql/mysqlbak #备份文件存储路径
GIT_PATH=/Users/mac/Documents/workspace/Essence
DATE=`date '+%Y%m%d-%H%M'` #日期格式（作为文件名）
DUMPFILE=${DATE}.sql #备份文件名
OPTIONS="-h$HOSTNAME -u$USER -p$PASSWORD --default-character-set=utf8 --skip-lock-tables --databases $DATABASE"

#切换至备份目录
cd $BACKUP_DIR
#使用mysqldump 命令备份制定数据库，并以格式化的时间戳命名备份文件
mysqldump $OPTIONS > $DUMPFILE

cd $GIT_PATH
git add .
git commit -m "${DATE}"
git push

expect << EOF
set timeout 360
spawn sudo shutdown -h now
expect "*Password:" {send "7894563\r"}
expect "#" {send "exit\r"}
EOF

#清理过期文件
#find $BACKUP_DIR -type f -name "*.tgz" -exec rm -rf {} \;
