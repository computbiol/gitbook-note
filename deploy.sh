#!/bin/bash

# 设置远程仓库的地址
#remote_url=git@github.com:computbiol/gitbook-note.git
#git remote add origin $remote_url
# 获取当前时间
#cur_date="`date +%Y-%m-%d-%H:%M:%S`" 

# 生成_book文件并托管到github
gitbook build
cd gh-pages/
rm -rf `ls | grep -v README.md`
cd ../_book/
cp -r `ls | grep -v deploy.sh` ../gh-pages/
cd ../gh-pages/
git add -A
git commit -m "Update"
git push origin gh-pages
