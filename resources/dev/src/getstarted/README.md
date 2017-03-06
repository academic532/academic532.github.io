## 开发环境准备

实验室网页是 [静态网页](https://en.wikipedia.org/wiki/Static_web_page)，所有用户访问的网页都是预先生成的，用户浏览器访问请求时只需要返回静态的网页文件即可，而不需要动态生成。为了开发可维护的网页代码，使用 [Jekyll](http://jekyllrb.com/) 作为静态网页生成器，其提供的 [Markdown](http://www.markdown.cn/) 转换器和 [Liquid](http://shopify.github.io/liquid/) 模版引擎等特性，可以降低开发和维护网页源码的工作量，这主要是两方面的：

* Liquid 模版为转换过程加入了控制流程的特性（变量、条件分支、循环等）
* Markdown 转换器可以减小格式化网页内容的工作量

因此开发环境准备的核心任务是在计算机上安装和配置 Jekyll。 Jekyll 使用 [Ruby](https://www.ruby-lang.org/zh_cn/) 实现，首先需要在操作系统上安装较新版本的 Ruby，然后使用 Ruby 的包管理器 [RubyGems](https://rubygems.org/) 来安装 Jekyll。

本章会介绍 Windows、OS X 和 Linux 三个主流桌面操作系统上安装和配置 Jekyll 的方式，然后在最后介绍使用 Windows Subsystem for Linux(WSL) 安装配置 Jekyll 的方式。