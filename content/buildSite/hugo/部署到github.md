+++
title = "部署到github"
date = 2019-04-28T15:13:41+08:00
weight = 5
chapter = true
pre = "<b>X. </b>"
+++


# 部署到github
## 配置git 用户
~~~
git config --global user.name "(NAME)"
git config --global user.email '(EMAIL)'
~~~

## 创建 ssk
~~~
ssh-keygen -t rsa -C "(EMAIL)"
~~~

## 关联
将ssh/id_rsa 加到github 上
**remote**
~~~
git remote add origin git@....git
~~~

## 上传
~~~
git add .
git commit -m '(tag)'
git push -u origin master
~~~