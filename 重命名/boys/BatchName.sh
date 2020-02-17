#!/bin/bash
function changeName(){
file=$1 #获取文件名
extension="${file##*.}" #获取后缀名
#确定要匹配的后缀名
A=("gif" "png" "jpg" "json")
#重新命名文件名
newfilename=`printf "%04d" $4`
#判断是否是在匹配的后缀名中
if [ $(contains "${A[@]}" "$extension") == "y" ]; then
#重新拼接文件路径
newpath=$2$3$newfilename"."$extension
echo $newpath
#调用move 命令
mv $file $newpath
fi
}
#判断一个元素是否包含在数组当中
function contains() {
local n=$#
local value=${!n}
for ((i=1;i < $#;i++)) {
if [ "${!i}" == "${value}" ]; then
echo "y"
return 0
fi
}
echo "n"
return 1
}
#遍历文件夹
function travFolder(){
echo "遍历开始"
#打开目标文件夹
flist=`ls "/Users/mac/Desktop/boys/images"`
cd /Users/mac/Desktop/boys/images
#声明文件个数初始值 0
declare -i j=0
echo "开始改名字啦"
#循环所有文件以及文件夹
for f in $flist
do
if test -d $f  #判断是否是文件夹，如果是，遍历
then
#递归遍历
travFolder $f
else
j+=1
#修改文件名
changeName $f $2 $3 $j
fi
done
}
dir=images  #需要重命名的文件所在的文件夹，跟本shell脚本同一级目录
newPath="/Users/mac/Desktop/boys/New/" #重命名后移动到的目标文件夹
head="1_"
travFolder $dir $newPath $head
