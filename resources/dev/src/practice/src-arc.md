## 源码框架

### 目录结构

```
├── README.md
├── _config.yml
├── _includes
│   ├── footer.html
│   ├── head.html
│   ├── nav.html
│   └── scripts.html
├── _layouts
│   └── default.html
├── _site
├── assets
│   ├── css
│   │   └── main.css
│   └── js
├── contact
│   └── index.html
├── favicon.png
├── id_rsa.enc
├── index.html
├── media
│   └── home-slider
│       ├── slide1.jpg
│       ├── slide2.jpg
│       └── slide3.jpg
├── members
│   └── index.html
├── publications
│   └── index.html
├── research
│   └── index.html
└── resources
    └── index.html
```

解释：

- README.md: 不解释
- _config.yml: jekyll 配置文件
- _includes: 包含了所有网页共用的html片段
    - footer.html: 页面脚注
    - head.html: 页面的 `<head>` 段，主要包括第三方插件CSS
    - nav.html: 页面导航栏的代码
    - scripts.html: 页面的 `<script>` 段，主要包括第三方JS插件
- _layouts: 网页布局（可扩展多个布局）
    - default.html: 默认布局
- _site: jekyll 生成的网页代码，不用管
- assets: 网页资源文件夹
    - css: 包括自定义CSS文件，目前仅有 `main.css`
    - js: 包括自定义JS文件，目前为空
- contact: Contact Us 页面源码
- favicon.png: 显示在浏览器标签的图标
- is_rsa.enc: 加密的部署私钥，不用管
- index.html: 首页代码，目前添加了 slider
- media: 网页媒体文件夹，凡是媒体文件都有组织地放进来
    - home-slider: 首页 slider 展示的图片文件夹
- members: Members 页面源码
- publications: Publications 页面源码
- research: Research 页面源码
- resources: Resources 页面源码
