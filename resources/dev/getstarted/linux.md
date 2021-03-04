## Linux 安装配置 Jekyll

Linux 发行版有很多，通常自带有包管理器。某些发行版（如 Archlinux） 软件仓库的版本均比较新，直接使用包管理器安装 Ruby 即可；但是某些发行版（如Ubuntu LTS）的版本比较旧，下载二进制安装的方式更好。

### Archlinux 安装 Ruby

```bash
sudo pacman -S ruby
```

即可完成安装。

### Ubuntu LTS 二进制安装 Ruby

依次在终端输入以下指令

```bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo "ruby_url=https://cache.ruby-china.org/pub/ruby" > ~/.rvm/user/db
rvm requirements
rvm install 2.3.0
```

使用 `bash --login` 运行 bash，然后输入

```bash
rvm use 2.3.0 --default
```

完成安装，执行 `ruby --version` 确认已成功安装了 Ruby：

``` bash
$ ruby --version
ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-linux]
```

> **注意**：若你采用的是 Ubuntu 发行版，由于其默认终端的一些限制，导致远程访问时`--login`选项存在一些问题，以致于环境变量配置不当导致无法启动 jekyll，推荐使用 zsh 等终端替换默认的终端，可解决此问题，替换方式参考：[User-friendly Shell](/resources/wiki/services/remote.html#user-friendly-shell)。

### gem 镜像配置

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

1. [如何快速正确的安装 Ruby, Rails 运行环境](https://ruby-china.org/wiki/install_ruby_guide)
2. [Setting up your GitHub Pages site locally with Jekyll](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#platform-linux)
3. [Jekyll Basic Usages](https://jekyllrb.com/docs/usage/)