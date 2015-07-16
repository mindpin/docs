---
layout: repo
title: chinese-typography

account: ben7th
desc: 调用 www.youziku.com 服务的脚本，以及相关演示。目前存在加载延迟问题。
created: 2014-10-15
updated: 2014-10-16
last-commit: f897dad
type: demo
alternative: false

skills: [javascript, css, coffeescript, css-font-face]
threads: false
design-usage: 演示如何使用 youziku 的中文字体服务，并编写了一个较优化的脚本。
---

#### 演示地址

http://ben7th.github.io/chinese-typography/

![](http://i.teamkn.com/i/GUex53jQ.png?imageMogr2/thumbnail/500x)

#### 值得参考的实践

这个库以后可能可以使用：  
https://github.com/ben7th/chinese-typography/blob/master/js/youziku.coffee  

#### 后续规划

1. 如果 youziku 的服务能改进访问速度的话，此加载库或许能进行对应优化；
2. 如果今后自己来实现类似服务，这个库可以作为前端支持；

```css
/* 这是一个 hack 样式，能够强制浏览器对文本抗锯齿 */

div.antialiased {
  -webkit-transform: rotate(.1deg);
}
```