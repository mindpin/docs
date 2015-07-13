# help
团队帮助文档和技术参考

使用 jekyll 构建

发布方法参考：  
http://blog.nitrous.io/2013/08/30/using-jekyll-plugins-on-github-pages.html

### 编辑方法

签出 master 分支后，运行

bundle exec jekyll serve -H 0.0.0.0

增加项目就是在 _repos 目录下增加 md 文件  
文件命名规则：

```
<账号名>-<工程名>.md
```

增加文件后需要填写文件头部，其中：

- account: github 账号名
- desc: 工程描述（如果原来的描述不详细，这里写详细一点）
- created: 工程创建时间
- updated: 工程最后提交时间
- last-commit: 最后一次 commit 的 id
- type: 工程类型 （项目 project , 库 lib , 演示 demo , 文档汇总 doc）
- alternative: 是否有替代方案
- skills: 开发此工程需要的技能
- threads: 隶属于哪条主线，例如：属于 img4ye 就写 [img4ye]
- design-usage: 最初的设计用途


### 其他参考资料

http://stackoverflow.com/questions/28100220/jekyll-display-collection-by-category