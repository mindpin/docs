---
layout: repo
title: web-url-collector

account: mindpin
desc: 四叶书签服务。提供 url 快速收集工具
created: 2014-04-09
updated: 2015-04-28
last-commit: 7204d0f
type: project
alternative: false

skills: [rails, sidekiq, elasticsearch]
threads: false
design-usage: 四叶书签服务。提供 url 快速收集工具
---

#### 公网访问地址
http://collect.4ye.me/

#### 未解决的问题
1. 目前显示书签列表时，会调用每个 url_info 对象上的 tags_array 方法，如果书签较多，将在后台进行很多次请求。需要想方法来减少请求数，例如批量获取；
2. find_by_tags 需要想办法支持分页特性；
3. 为了使得网页截图不显示在 img4ye 服务的“全部图片”里，img4ye 可能需要 scope 机制。
