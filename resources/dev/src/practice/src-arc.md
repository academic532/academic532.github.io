## 源码框架

### tl;dr

网页构建过程如图所示。

![flow](http://wx1.sinaimg.cn/large/9bdff7acly1fdk3t8yws0j20je0b6jsx.jpg)

### 目录结构

```
├── 404.html
├── _config.yml
├── _data
│   ├── conferences.json
│   ├── gallery.json
│   ├── homeSlider.json
│   ├── members.json
│   ├── news.json
│   ├── projects.json
│   ├── publications.json
│   └── research.json
├── _includes
│   ├── footer.html
│   ├── head.html
│   ├── nav.html
│   └── scripts.html
├── _layouts
│   ├── common.html
│   ├── default.html
│   ├── gallery.html
│   └── home.html
├── _site
├── assets
│   ├── css
│   │   └── main.css
│   ├── js
│   │   └── lg-thumbnail.min.js
│   └── manifest.json
├── compile.sh
├── contact
│   └── index.html
├── favicon.png
├── gallery
│   └── index.html
├── index.html
├── media
│   ├── gallery
│   ├── homeSlider
│   └── members
├── members
│   ├── aboutProf.html
│   └── index.html
├── publications
│   └── index.html
├── research
│   └── index.html
└── resources
```

解释：

- 404.html: 请求页面未找到时返回的404页面
- _config.yml: Jekyll 配置文件
- _data: 数据文件夹，Jekyll 渲染模版时读取
- _includes: 包含了所有网页共用的html片段
    - footer.html: 页面脚注
    - head.html: 页面的 `<head>` 段，主要包括第三方插件CSS
    - nav.html: 页面导航栏的代码
    - scripts.html: 页面的 `<script>` 段，主要包括第三方JS插件
- _layouts: 网页布局文件
- _site: jekyll 生成的网页代码，可略过
- assets: 网页资源文件夹
    - css: CSS样式表文件目录
    - js: JS文件目录
- compile.sh: 自动构建脚本，可略过
- contact: Contact Us 页面源码
- favicon.png: 显示在浏览器标签的图标
- index.html: 首页代码
- media: 网页媒体文件夹
- members: Members 页面源码
- publications: Publications 页面源码
- research: Research 页面源码
- resources: Resources 页面源码
