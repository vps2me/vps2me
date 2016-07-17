#!/bin/bash
# 常规定义
videodir="/var/www/html"
# 删除html目录内所有文件
cd $videodir
for eachfile in *;
do
filename=${eachfile}
rm -rf "$filename"
done

exit 0