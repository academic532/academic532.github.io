## Linux 安装配置 Jekyll

Linux 发行版有很多，但都自带有一套包管理器。某些发行版（如 Archlinux） 软件仓库的版本均比较新，直接使用包管理器安装 Ruby 即可；但是某些发行版（如Ubuntu LTS）的版本比较旧，下载二进制安装的方式更好。

### Archlinux 安装 Ruby

```bash
sudo pacman -S ruby
```

即可完成安装。

### 二进制安装

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

1. [如何快速正确的安装 Ruby, Rails 运行环境](https://ruby-china.org/wiki/install_ruby_guide)
2. [Setting up your GitHub Pages site locally with Jekyll](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#platform-linux)