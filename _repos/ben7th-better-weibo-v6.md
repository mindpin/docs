---
layout: repo
title: better-weibo-v6

account: ben7th
desc: 新浪微博 2014 年发布 v6 版之后，样式让人很不习惯。这是一个 chrome 插件，用来优化样式和去除广告。
created: 2014-10-25
updated: 2015-06-16
last-commit: 0b1b6e3
type: project
alternative: false
languages: [Javascript, css]

skills: [chrome-plugin-dev, javascript, css]
thread: false
design-usage: 给经常使用新浪微博的人使用（主要是团队成员），以改善访问体验。
---

#### 值得参考的实践

1. 如果要开发类似的仅仅改进第三方网站样式的 chrome 插件，这个工程值得参考；
2. 如何通过点击图标来开启/关闭插件逻辑；
3. 如何让插件只在特定站点生效；

    ```javascript{5}
    // in manifest.json

    "content_scripts": [
      {
        "matches": [ "http://*.weibo.com/*" ],
        "css": [ 
          "css/weibo.css",
          "css/remove_ads.css"
        ],
        "js": [
          "content_script.js"
        ],
        "run_at": "document_start"
      }
    ]
    ```


#### 未解决的问题

#### 后续规划

#### 小结