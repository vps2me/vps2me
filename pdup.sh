#!/bin/bash
# 常规定义
# 本地目录
videodir="/var/www/html"
# 云端目录
remotedir="/apps/bpcs_uploader"

pcs synch -u -r -c $videodir $remotedir

exit 0