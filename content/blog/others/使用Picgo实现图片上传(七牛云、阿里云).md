+++
title = "使用Picgo实现图片上传(七牛云、阿里云)"
date = 2019-05-04T23:51:35+08:00
weight = 5
chapter = true
toc = true
img = "https://uploadbeta.com/api/pictures/random"
summary = "{{ replace .TranslationBaseName '-' ' ' | title }}"
+++

# 使用picgo 
> picgo用于方便的上传图片，可以下载安装包也可以使用npm运行,个人推荐使用安装包，因为使用npm要运行命令，并且启动是真的慢

[查看picgo](https://github.com/Molunerfinn/PicGo)

[安装picgo](https://github.com/Molunerfinn/PicGo/releases)

# 使用七牛云实现图片上传
> markdown的图上上传是一个困扰作者很久的问题，图片放在本地又会使资源增大，
变得复杂；放于网络又困于没有方便的方法，总不能租个服务器去配置图片环境吧，
七牛云就可以较好得解决这个问题
- **优点** 基础数据免费，20G的免费使用
- **缺点** 要上传身份证，使用picgo不方便，要设置的选项多
## 申请云空间 [https://www.qiniu.com](https://www.qiniu.com)
上七牛云网，点击左侧左侧菜单 对象存储，一开始我们需要新建一个存储空间来存放我们的图片资源。点击新建存储空间

## 上传文件
点击内容管理选项，可以看到我们的图片资源列表。点击上传文件，在新页面上传图片即可
![](https://bin-images.oss-cn-shenzhen.aliyuncs.com/img/20190602124255.png)

![](https://bin-images.oss-cn-shenzhen.aliyuncs.com/img/20190602124316.png)
## 获得外链
![](https://bin-images.oss-cn-shenzhen.aliyuncs.com/img/20190602124334.png)

# 使用阿里云实现图片上传
- **优点** 安全，方便
- **缺点** 要点钱，不过不贵，40G一年只要9元
## 购买流量
[对象存储OSS资源](https://common-buy.aliyun.com/)
![](https://bin-images.oss-cn-shenzhen.aliyuncs.com/20190602122150.png)
## 新建bucket
[OSS资源管理](https://oss.console.aliyun.com/overview)
![](https://bin-images.oss-cn-shenzhen.aliyuncs.com/20190602122827.png)
### 点击新建bucket，填写信息
![](https://bin-images.oss-cn-shenzhen.aliyuncs.com/20190602122919.png)
> 建议使用公共读，否则picgo界面看不到图片预览
### 点击创建access key
如果有可以跳过，没有则要新建
![](http://bingosvan.com/img/20190602123452.png)
## 使用picgo
如图设置，空间名是刚创建的bucket名，存储区域是资源管理界面的	
EndPoint（地域节点）前几位。
![](https://bin-images.oss-cn-shenzhen.aliyuncs.com/img/20190602123745.png)
## 上传图片
设置成功后点击上传区，上传图，可以使用文件或剪切板（推荐），上传成功后直接粘贴即可。
![](https://bin-images.oss-cn-shenzhen.aliyuncs.com/img/20190602123953.png)
