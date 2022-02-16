## Window 环境配置

推荐使用 [Chocolatey](https://chocolatey.org/) 包管理器安装和配置开发环境，软件升级、卸载等维护操作更加简便。

> **注意**：本节涉及到的使用CMD输入命令的操作，均应该以**管理员权限**启动CMD。

### 安装 Chocolatey

启动 CMD，输入

```bash
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

等待安装完成，即可使用 `choco install` 或 `cinst` 安装新的软件。关于 Chocolatey 的基础使用，阅读本节参考文章中的相应条目。

### 安装Jekyll

启动 CMD，输入

```bash
cinst ruby -y
```

等待安装完成。安装完成后的ruby程序目录在 `C:\tools\ruby[xx]`，`[xx]`为Ruby的版本号，后文注意替换。

下载 [http://curl.haxx.se/ca/cacert.pem](http://curl.haxx.se/ca/cacert.pem) 到 `C:\tools\ruby[xx]`目录，然后 [设置用户变量](http://blog.csdn.net/eric_jjc/article/details/5377684) ，添加 `SSL_CERT_FILE`变量。

![ssl_cert](http://wx4.sinaimg.cn/large/9bdff7acly1fdfbpzgpozj20ij05awef.jpg)

注销后配置生效。

启动 CMD，输入

```bash
gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
```

修改 gem 源为淘宝镜像，以加速 Jekyll 的安装。

启动 CMD，输入

```bash
gem install github-pages 
```

`github-pages` 包括了 Jekyll 和一些其他的工具，且与当前 Github Pages 服务后台生成网页的工具一致，故直接安装 `github-pages` 更方便。

### 安装 Git

启动 CMD，输入

```
cinst git -y
```

完成安装。安装完成后在开始菜单中能够找到 Git Bash 程序。阅读 [Git版本管理](https://github.com/academic532/academic532.github.io/blob/dev/resources/dev/src/practice/git.md) 一节以了解 Git 的基础用法。

### 测试安装

若已阅读了 [Git版本管理](https://github.com/academic532/academic532.github.io/blob/dev/resources/dev/src/practice/git.md) 一节，可使用 Git 从 Github 拷贝网站代码到本地。

启动 Git Bash，输入

```bash
cd /d
git clone git@github.com:academic532/academic532.github.io labpage
```

即可将网页代码下载到D盘的`labpage`目录中。

若还没有阅读 Git 操作的相应章节，直接[下载](https://github.com/academic532/academic532.github.io/archive/dev.zip)源码压缩包到本地，然后解压。

在文件浏览器中定位到网页源码目录，在目录中右键通过 **Git Bash Here** 启动 Git Bash，然后输入

```bash
jekyll serve --watch --port=4001
```

出现类似 **Server running...** 的信息，表示 Jekyll 已自动编译了网页源码，并启动了一个本地的 HTTP 服务器。浏览器访问 [http://127.0.0.1:4001/](http://127.0.0.1:4001/) 即可查看运行在本地的http服务器呈现的网页。

### 参考文档

1. [How to install Jekyll and pages-gem on Windows (x64)](http://jwillmer.de/blog/tutorial/how-to-install-jekyll-and-pages-gem-on-windows-10-x46)
2. [Download a cacert.pem for RailsInstaller](https://gist.github.com/fnichol/867550#the-manual-way-boring) 
3. [Chocolatey Packages](https://chocolatey.org/packages)
4. [Chocolatey Installation](https://chocolatey.org/install)
5. [Jekyll Basic Usages](https://jekyllrb.com/docs/usage/)
