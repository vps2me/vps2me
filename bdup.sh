#!/bin/bash
# 常规定义
videodir="/var/www/html"
# 上传html目录内所有文件
cd $videodir
for eachfile in *;
do
filename=${eachfile}
/root/baidupan/bpcs_uploader.php upload $videodir/"$filename" "$filename"
done

exit 0