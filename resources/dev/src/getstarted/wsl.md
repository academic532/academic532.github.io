## WSL 安装配置 Jekyll

WSL 是 Windows 10 的一项新特性，允许实时地在 Windows 上运行一个 Linux 子系统（Ubuntu 14.04 LTS），使用该子系统可以使用类似于 OS X 和 Linux 上的方式来安装 Jekyll，从而规避可能存在的兼容性问题。

### 开启 WSL

参考：[Installation Guide](https://msdn.microsoft.com/zh-cn/commandline/wsl/install_guide)。

在使用 `sudo` 执行命令式可能出现 `unable to resolve host error` 错误，参考 [Fix unable to resolve host error in Bash on Ubuntu in Windows 10](http://winaero.com/blog/fix-unable-to-resolve-host-error-in-bash-on-ubuntu-in-windows-10/) 解决。


### 安装 Ruby

启动 CMD，输入 `bash --login` 启动 WSL 的 Bash 命令行终端。

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

```bash
jekyll serve --watch --force_polling --port=4001
```

提示无错误后，浏览器访问 [http://127.0.0.1:4001/](http://127.0.0.1:4001/) 查看网页。