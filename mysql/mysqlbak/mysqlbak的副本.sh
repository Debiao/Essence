#!/bin/bash
USER="root"               
PASSWORD="Sun900930"      
DATABASE="admin_v5"   
HOSTNAME="localhost"

BACKUP_DIR=/Users/mac/Desktop #备份文件存储路径
#LOG_DIR=/opt/backup/mysql/mysqlback_logs/
#LOGFILE=/opt/backup/mysql/mysqlback_logs/data_backup.log #日记文件路径
DATE=`date '+%Y%m%d-%H%M'` #日期格式（作为文件名）
DUMPFILE=${DATE}.sql #备份文件名
#ARCHIVE=${DATE}.sql.tgz #压缩文件名
OPTIONS="-h$HOSTNAME -u$USER -p$PASSWORD --default-character-set=utf8 --skip-lock-tables --databases $DATABASE"
#mysqldump －help


#判断备份文件存储目录是否存在，否则创建该目录
if [ ! -d $BACKUP_DIR ] ;then
    mkdir -p "$BACKUP_DIR"
fi

#开始备份之前，将备份信息头写入日记文件
#echo " " >> $LOGFILE
#echo " " >> $LOGFILE
#echo "———————————————–" >> $LOGFILE
#echo "BACKUP DATE:" $(date +"%y-%m-%d %H:%M:%S") >> $LOGFILE
#echo "———————————————– " >> $LOGFILE

#切换至备份目录
cd $BACKUP_DIR
#使用mysqldump 命令备份制定数据库，并以格式化的时间戳命名备份文件
mysqldump $OPTIONS > $DUMPFILE
#判断数据库备份是否成功
#if [[ $? == 0 ]]; then
#创建备份文件的压缩包
#tar czvf $ARCHIVE $DUMPFILE >> $LOGFILE 2>&1
#输入备份成功的消息到日记文件
#echo “[$ARCHIVE] Backup Successful!” >> $LOGFILE
#删除原始备份文件，只需保 留数据库备份文件的压缩包即可
#rm -f $DUMPFILE
#echo “Database Backup Fail!” >> $LOGFILE
#fi
#输出备份过程结束的提醒消息
echo “Backup Process Done”

#远程到指定服务器
#scp ${BACKUP_DIR}/*.tgz root@192.168.3.79:/home/back_up/

#清理过期文件
#find $BACKUP_DIR -type f -name "*.tgz" -exec rm -rf {} \;
