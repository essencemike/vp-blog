#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 先删除原有的dist文件
rm -rf docs/.vuepress/dist

# 生成静态文件
yarn build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.gepanfamily.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<username>.github.io
# git push -f git@github.com:essencemike/essencemike.github.io.git master

# 如果发布到 https://<username>/github.io/<repo>
git push -f git@github.com:essencemike/vp-blog.git master:gh-pages

cd -