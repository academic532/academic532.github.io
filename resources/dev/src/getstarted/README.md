## 开发环境准备

实验室网页目前（2017-03-06 17:57:36）是 [静态网站](https://en.wikipedia.org/wiki/Static_web_page)。静态网站响应浏览器的 [HTTP GET请求](https://www.w3schools.com/tags/ref_httpmethods.asp) 时，只需返回已存储于 HTTP 服务器中的静态文件（html、js、css、图片等资源）。

为了开发可维护的代码，使用 [Jekyll](http://jekyllrb.com/) 作为静态网页生成器，其提供的 [Markdown](http://www.markdown.cn/) 转换器和 [Liquid](http://shopify.github.io/liquid/) 模版引擎等特性，可以降低开发和维护网页源码的工作量，这主要是两方面的：

* Liquid 模版为转换过程加入了控制流程的特性（变量、条件分支、循环等）
* Markdown 转换器可以减小格式化网页内容的工作量

另外，代码版本管理工具也是代码可维护性的保障，本网站的开发使用目前流行的 [Git](https://git-scm.com/) 作为版本管理工具。使用 Git 的另外一个好处在于可以配合[持续集成](http://www.ruanyifeng.com/blog/2015/09/continuous-integration.html) 服务进一步加快开发和部署网站的敏捷性。

本节会介绍开发过程中需要用到的工具（主要是Jekyll和Git）的安装和配置过程。