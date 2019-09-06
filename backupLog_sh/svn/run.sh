#! /bin/bash
#set -ex 调试命令
#报错直接停止
set -e     
TIME=$(date "+%Y-%m-%d-%H-%M-%S---")
ERROR_PATH=/Users/mac/Documents/temporary/log/svn
#<------------------------------------------------> 

if [ -f ${ERROR_PATH}/error.log ];then
        cp ${ERROR_PATH}/error.log ${ERROR_PATH}/${TIME}error.log
        rm -rf ${ERROR_PATH}/error.log
        if [ $? -eq 0 ];then
        echo  "log备份成功"
        else
        echo  "log备份失败"
        fi
    else
        echo '!!!' ${ERRORFILE_PATH} '不存在'
fi 

open ${ERROR_PATH}
