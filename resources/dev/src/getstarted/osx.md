## OS X 安装配置 Jekyll

OS X 内置有 Ruby，但是版本较低，且由于默认的 Ruby 安装在 `/System` 目录下，对日常的开发、维护都带来许多不便。为了安装较新版本的 Ruby 然后安装 Jekyll，类似于 Windows，首先安装一个好用的包管理器，OS X 平台下的选择是 [homebrew](http://brew.sh/)。

### 安装 homebrew

在命令行下，执行以下命令即可完成 homebrew 的安装（安装过程中将提示输入当前用户的密码）：

```bash
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

该命令将会从 homebrew 的 GitHub 仓库抓取最新版本并自动完成安装。安装成功后，即可使用 `brew` 命令来安装 Ruby 的最新版本，以及其他工具。

> homebrew 的默认安装目录为 /usr/local，所有通过 `brew` 安装的程序都会默认安装到 `/usr/local/Cellars/程序名/版本号/` 目录下

### 安装 Ruby

在命令行下依次执行以下命令，即可自动完成最新版本 Ruby 的安装：

```bash
brew update
brew install ruby
```

说明：

1. `brew update` 将会从 GitHub 上更新 brew 所支持的所有软件的版本信息，保证你能够安装到最新的版本
2. `brew install ruby` 将会从 Ruby 的 GitHub 仓库抓取最新版本的代码，并编译安装

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

进入源码目录，输入

```
jekyll serve --port=4001
```

提示无错误后，浏览器访问 [http://127.0.0.1:4001/](http://127.0.0.1:4001/) 查看网页。

### 参考文档

1. [Mac OS X 上安装 Ruby](https://github.com/ruby-china/homeland/wiki/Mac-OS-X-%E4%B8%8A%E5%AE%89%E8%A3%85-Ruby)
2. [Setting up your GitHub Pages site locally with Jekyll](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#platform-mac)