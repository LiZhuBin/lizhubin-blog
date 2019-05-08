+++
title = "git push 出现的问题"
date = 2019-05-04T18:30:41+08:00
weight = 10
chapter = true
tags =  ["bug","git"]
categories =  ["git"]
+++


# MegerConflict
## 问题
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
## 解决
勾选强制覆盖已有的分支（可能会丢失改动），再点击上传，上传成功。
~~~
git push -u origin master -f 
~~~
- - -
## 问题
Your local changes to the following files would be overwritten by merge:
        protected/config/main.php
Please, commit your changes or stash them before you can merge.
## 原因
如果系统中有一些配置文件在服务器上做了配置修改,然后后续开发又新添加一些配置项的时候,

在发布这个配置文件的时候,会发生代码冲突:
## 解决
~~~
git reset --hard
git pull
~~~
## 问题
git push 时卡顿，打开github也很打开，但网络是正常的
git bash 上显示
~~~
Connection reset by 13.250.***.223 port 22
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

~~~
github 好不容易打开后显示
~~~
Cannot retrieve the latest commit at this time.
~~~
## 原因
github 没更新完，部署gitpages需要时间
> 真laji
## 解决
等他更新就好了



