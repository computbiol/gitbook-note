#!/bin/bash

# 设置远程仓库的地址
#remote_url=git@computbiol.com:/var/www/html/note.git
#git remote add origin $remote_url
# 获取当前时间
#cur_date="`date +%Y-%m-%d-%H:%M:%S`" 

# 生成_book文件并托管到github
gitbook build
cd gh-pages/
#除了括号内的都删
shopt -s extglob
rm -rf !(README.md|CNAME)
shopt -u extglob
cd ../_book/
cp -r `ls | grep -v deploy.sh` ../gh-pages/
cd ../gh-pages/
git add -A
git commit -m "Update"
git push origin master
