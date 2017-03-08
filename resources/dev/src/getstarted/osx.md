## OS X 安装配置 Jekyll

OS X 系统内置的 Ruby 和 git，但是其版本较低。类似于 Windows，首先安装一个包管理器 [homebrew](http://brew.sh/)，然后进行后续的软件安装。

### 安装 homebrew

启动终端，执行以下命令即可完成 homebrew 的安装（安装过程中将提示输入当前用户的密码）：

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

> homebrew 的默认安装目录为 /usr/local，所有通过 `brew` 安装的程序都会默认安装到 `/usr/local/Cellars/程序名/版本号/` 目录下

### 安装 Ruby

在命令行下依次执行以下命令，即可自动完成最新版本 Ruby 的安装：

```bash
brew update
brew install ruby
```

> 说明：
> 1. `brew update` 指令用于更新 brew 仓库内软件的版本信息；
> 2. `brew install ruby` 用于安装 Ruby。

安装成功后，执行 `ruby --version` 确认已成功安装了 Ruby：

``` bash
$ ruby --version
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin16]
```

修改 gem 源为淘宝镜像，以加速 Jekyll 安装。

```bash
gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
```

### 安装 Jekyll

`github-pages` 包括了 Jekyll 和一些其他的工具，且与当前 Github Pages 服务后台生成网页的工具一致，故直接安装 `github-pages` 更方便。

```bash
gem install github-pages 
```

完成安装。

### 测试安装

若已阅读了 [Git版本管理](/resources/dev/practice/git.html) 一节，可使用 Git 从 Github 拷贝网站代码到本地。

```bash
git clone git@github.com:academic532/academic532.github.io labpage
```

即可将网页代码下载到`labpage`目录中。

若还没有阅读 Git 操作的相应章节，直接[下载](https://github.com/academic532/academic532.github.io/archive/dev.zip)源码压缩包到本地，然后解压。

```bash
jekyll serve --port=4001
```

出现类似 **Server running...** 的信息，表示 Jekyll 已自动编译了网页源码，并启动了一个本地的 HTTP 服务器。浏览器访问 [http://127.0.0.1:4001/](http://127.0.0.1:4001/) 即可查看运行在本地的http服务器呈现的网页。

### 参考文档

1. [Mac OS X 上安装 Ruby](https://github.com/ruby-china/homeland/wiki/Mac-OS-X-%E4%B8%8A%E5%AE%89%E8%A3%85-Ruby)
2. [Setting up your GitHub Pages site locally with Jekyll](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#platform-mac)
3. [Jekyll Basic Usages](https://jekyllrb.com/docs/usage/)