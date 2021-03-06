+++
title = "部署到github"
date = 2019-04-28T15:13:41+08:00
weight = 5
chapter = true
tags =  ["hugo"]
categories =  ["博客"]
img = "https://uploadbeta.com/api/pictures/random"
toc = true
summary = "{{ replace .TranslationBaseName '-' ' ' | title }}"
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
## 注意
远程库不能命名为[(你的名字)/库名]，否则打开github.io时只会出现index.html/README.md的内容，真正的位置在你生成的静态文件中（默认public,推荐docs目录）

正确做法：
在config.toml中加入
~~~
publiddir = "docs"
~~~
接着删除public目录，运行hugo命令

传文件后
到github库位置的setting找到github pages，把master改成master/src

![setting](http://pqzllubto.bkt.clouddn.com/mysite/hugo/github-page-setting.pnggithub-page-setting.png)
> 保证输入网址时显示的是该文件下生成的docs下的静态文件