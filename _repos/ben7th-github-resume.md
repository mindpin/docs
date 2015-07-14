---
layout: repo
title: github-resume

account: ben7th
desc: 根据 github 账号生成可视化简历
created: 2014-10-17
updated: 2014-10-28
last-commit: 3af06ee
type: lib
alternative: false

skills: [gulp, coffeescript, sass, jquery, d3js]
threads: false
design-usage: 以这个场景为例，编写一个用于处理数据加载和填充的前端框架（DataFiller）
---

#### 演示地址

http://ben7th.github.io/github-resume

由于只实现了部分效果，所以演示只能看个大概。

![](http://i.teamkn.com/i/RqiiLwk9.png?imageMogr2/thumbnail/500x)

#### 值得复用的实践

1. DataFiller 框架  
   https://github.com/ben7th/github-resume/blob/master/static/js/data-filler.coffee  
   <br/>
   参考文档地址：  
   http://s.4ye.me/lkjmnm

2. github API 请求逻辑

#### 后续计划

1. 如果有时间，完成 DataFiller 框架，并将其整合到 lily
2. 封装 github API js SDK （或使用第三方的库）