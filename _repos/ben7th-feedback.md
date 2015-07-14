---
layout: repo
title: feedback

account: ben7th
desc: 这是一个用来处理“问题反馈”的工程
created: 2012-04-16
updated: 2012-04-20
last-commit: 9b45691
type: project
alternative: false

skills: [rails, mysql, css, javascript]
threads: false
design-usage: 最初的设计目的是做一个简单的工程用来收集问题反馈。<br/>不过没有继续开发下去。
---

#### 用途

![](http://i.teamkn.com/i/NqeqJyhL.png)

这应该是一个实验性质项目。打算把它做成一个可配置的问题报告模块。

#### 开发环境

2012 年最后一次提交时，版本库里的代码还是基于 rails 3.x 的。  
为了在开发环境跑起来，ben7th 修改了 Gemfile，将依赖更改为 rails 4 并进行了一些兼容性修改。  
目前开发环境应该是可以直接跑起来的。

```sh
# 签出代码
# 修改 config/database.yml

bundle
rake db:create
rake db:migrate
rails s -b 0.0.0.0
```

#### 计划

1. 如果有时间的话，把它做成 rails engine
2. 目前它是使用 mysql 数据库的。需要改成使用 mongodb
3. 应该可以作为练手任务来做