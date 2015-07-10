---
layout: article
title:  article1
date:   2015-7-10 16:17:21
categories: [jekyll]
reader-title: 文章一
---

测试一

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <script src="/xx/jquery.min.js" />
    <script src="http://img.4ye.me/assets/plugins/uploader.js" />
    <script>
      jQuery(function(){
        var options = {
          // 不能为空
          // 指定一个 jquery selector str 或者 dom 或者 jQuery(dom)，必须对应到 dom 不能为空
          // 会给这个 dom 注册点击事件，点击选择本地文件
          browse_button:   jQuery(".page-file-entities .action .upload"),

          // 可以为空
          // 默认值是  http://img.4ye.me/file_entities/uptoken
          // 指定获取上传 token 的 url 地址
          // 如果是开发模式需要指定自己的开发服务器地址
          uptoken_url:     'http://img4ye-dev-ip:3000/file_entities/uptoken',
        }
        new Img4yeUploader(options)
      });
    </script>
  </head>
  <body>
    <div class="page-file-entities">
      <div class="action">
        <div class="upload"></div>
      </div>
    </div>
  </body>
</html>
```

```
### aaaa
```