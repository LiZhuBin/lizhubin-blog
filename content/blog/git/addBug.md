+++
title = "AddBug"
date = 2019-05-08T15:10:59+08:00
chapter = true
weight = 5
tags =  ["bug","git"]
categories =  ["git"]
+++

# 运行git add时出现的问题
## 问题
warning: LF will be replaced by CRLF in .idea/workspace.xml.
The file will have its original line endings in your working directory
## 原因
- Windows中使用CRLF标识一行的结束，而在Linux/UNIX系统中只使用LF标识一行的结束。CRLF即Carriage-Return Line-Feed的缩写。
- 通常情况下，Git库不会自动修改文件内容，但是默认会将入库的文件的行尾符设置为LF，会将检出的文件的行尾符设置为CRLF。
- 说明：工作目录中的mywebdav.conf文件的行尾是LF，但是这里在即将入Git库之前，却将LF转换为CRLF。
> 该警告无伤大雅，因为在Git库中的该文件仍然以LF为行尾。
## 解决
设置core.autocrlf属性为false
~~~
git config core.autocrlf false
~~~

