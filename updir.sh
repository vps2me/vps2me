#!/bin/bash
# 常规定义
videodir="/var/www/html"

read -p "请输入需要bpcs-uploader上传的目录(html下的子目录如：twice)：" dir
# 上传自定义目录内所有文件
cd $videodir/"$dir"
for eachfile in *;
do
filename=${eachfile}
/root/baidupan/bpcs_uploader.php upload $videodir/"$dir"/"$filename" "$dir"/"$filename"
done

exit 0